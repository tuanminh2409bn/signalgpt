const admin = require("firebase-admin");
const path = require("path");
const fs = require("fs");

// Hướng dẫn chạy:
// node migrate_users_to_elite.js <đường_dẫn_đến_file_service_account.json>

const serviceAccountPath = process.argv[2];
if (!serviceAccountPath) {
  console.error("Vui lòng cung cấp đường dẫn đến file serviceAccountKey.json!");
  console.error("Ví dụ: node migrate_users_to_elite.js ./serviceAccountKey.json");
  process.exit(1);
}

const absolutePath = path.resolve(serviceAccountPath);
if (!fs.existsSync(absolutePath)) {
  console.error(`Không tìm thấy file credentials tại: ${absolutePath}`);
  process.exit(1);
}

const serviceAccount = require(absolutePath);

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

const firestore = admin.firestore();

async function migrateUsers() {
  console.log("=== Bắt đầu quét dữ liệu người dùng ===");
  const usersSnapshot = await firestore.collection("users").get();
  
  let count = 0;
  const batch = firestore.batch();
  
  for (const doc of usersSnapshot.docs) {
    const userData = doc.data();
    const activeSubs = userData.activeSubscriptions || [];
    const tier = userData.subscriptionTier || 'free';
    
    // Kiểm tra xem user có gói cũ hoặc đang là elite không
    const hasOldSubs = activeSubs.includes('gold') || activeSubs.includes('forex') || activeSubs.includes('crypto');
    const isElite = tier.toLowerCase() === 'elite';
    
    if (hasOldSubs || isElite) {
      console.log(`Đang xử lý User: ${userData.email} (${doc.id})`);
      
      // Tìm ngày bắt đầu nhỏ nhất (nếu có) và ngày hết hạn lớn nhất (nếu có) của các gói cũ
      let maxExpiryDate = null;
      let minStartDate = null;
      
      const checkAndCompareDates = (expiryVal, startVal) => {
        if (expiryVal) {
          const date = expiryVal.toDate ? expiryVal.toDate() : new Date(expiryVal);
          if (!maxExpiryDate || date > maxExpiryDate) {
            maxExpiryDate = date;
          }
        }
        if (startVal) {
          const date = startVal.toDate ? startVal.toDate() : new Date(startVal);
          if (!minStartDate || date < minStartDate) {
            minStartDate = date;
          }
        }
      };

      // Đọc ngày của Gold, Forex, Crypto cũ
      if (userData.subscriptionsExpiry) {
        checkAndCompareDates(userData.subscriptionsExpiry.gold, userData.subscriptionsStart?.gold);
        checkAndCompareDates(userData.subscriptionsExpiry.forex, userData.subscriptionsStart?.forex);
        checkAndCompareDates(userData.subscriptionsExpiry.crypto, userData.subscriptionsStart?.crypto);
      }
      
      // Check thêm expiry date chung của user
      if (userData.subscriptionExpiryDate) {
        const date = userData.subscriptionExpiryDate.toDate ? userData.subscriptionExpiryDate.toDate() : new Date(userData.subscriptionExpiryDate);
        if (!maxExpiryDate || date > maxExpiryDate) {
          maxExpiryDate = date;
        }
      }

      // Fallback nếu không có ngày nào hợp lệ
      if (!maxExpiryDate) {
        maxExpiryDate = new Date();
        maxExpiryDate.setMonth(maxExpiryDate.getMonth() + 1); // Cho 1 tháng
      }
      if (!minStartDate) {
        minStartDate = new Date();
      }

      const newActiveSubs = Array.from(new Set([...activeSubs, 'elite', 'gold', 'forex', 'crypto']));
      
      const updates = {
        subscriptionTier: 'elite',
        subscriptionExpiryDate: admin.firestore.Timestamp.fromDate(maxExpiryDate),
        activeSubscriptions: newActiveSubs,
        'subscriptionsStart.elite': admin.firestore.Timestamp.fromDate(minStartDate),
        'subscriptionsExpiry.elite': admin.firestore.Timestamp.fromDate(maxExpiryDate)
      };
      
      batch.update(doc.ref, updates);
      count++;
      
      console.log(` -> Đã lên lịch nâng cấp thành Elite (Hết hạn: ${maxExpiryDate.toLocaleDateString()})`);
    }
  }
  
  if (count > 0) {
    console.log(`Đang commit ghi dữ liệu cho ${count} người dùng...`);
    await batch.commit();
    console.log("=== Di chuyển dữ liệu THÀNH CÔNG! ===");
  } else {
    console.log("Không tìm thấy người dùng nào cần di chuyển dữ liệu.");
  }
}

migrateUsers().catch(err => {
  console.error("Lỗi khi chạy migration:", err);
  process.exit(1);
});
