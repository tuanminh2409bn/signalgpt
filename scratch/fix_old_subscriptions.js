// Script cập nhật dữ liệu subscription cho khách hàng cũ
// Chạy: node scratch/fix_old_subscriptions.js

const admin = require('firebase-admin');
const serviceAccount = require('../serviceAccountKey.json');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

const firestore = admin.firestore();

async function fixOldSubscriptions() {
  console.log('🔍 Tìm tất cả users có subscriptionTier = "elite"...');
  
  const eliteUsersSnapshot = await firestore
    .collection('users')
    .where('subscriptionTier', '==', 'elite')
    .get();

  console.log(`📊 Tìm thấy ${eliteUsersSnapshot.size} user(s) Elite.`);

  let fixedCount = 0;
  let skippedCount = 0;
  let errorCount = 0;

  for (const userDoc of eliteUsersSnapshot.docs) {
    const userId = userDoc.id;
    const userData = userDoc.data();
    
    const hasStartDate = !!userData.subscriptionStartDate;
    const hasPackageType = !!userData.elitePackageType;
    const hasExpiryDate = !!userData.subscriptionExpiryDate;
    const hasSubscriptionsExpiry = !!userData.subscriptionsExpiry;
    
    console.log(`\n--- User: ${userId} (${userData.email || 'no email'}) ---`);
    console.log(`  subscriptionStartDate: ${hasStartDate ? '✅' : '❌ THIẾU'}`);
    console.log(`  elitePackageType: ${hasPackageType ? userData.elitePackageType : '❌ THIẾU'}`);
    console.log(`  subscriptionExpiryDate: ${hasExpiryDate ? userData.subscriptionExpiryDate.toDate().toISOString() : '❌ THIẾU'}`);
    console.log(`  subscriptionsExpiry: ${hasSubscriptionsExpiry ? '✅' : '❌ THIẾU'}`);

    if (hasStartDate && hasPackageType && hasExpiryDate && hasSubscriptionsExpiry) {
      console.log(`  → Đã đủ dữ liệu, bỏ qua.`);
      skippedCount++;
      continue;
    }

    try {
      const transactionsSnapshot = await firestore
        .collection('users').doc(userId).collection('transactions')
        .orderBy('transactionDate', 'desc').limit(1).get();

      const updateData = {};
      let productId = null;
      let transactionDate = null;

      if (!transactionsSnapshot.empty) {
        const txData = transactionsSnapshot.docs[0].data();
        productId = txData.productId;
        transactionDate = txData.transactionDate;
        console.log(`  📝 Transaction: productId=${productId}`);
      } else {
        console.log(`  ⚠️ Không tìm thấy transaction, dùng mặc định.`);
      }

      if (!hasPackageType) {
        let elitePackageType = 'unknown';
        if (productId) {
          if (productId.includes('lifetime')) elitePackageType = 'lifetime';
          else if (productId.includes('12_months') || productId.includes('yearly')) elitePackageType = 'yearly';
          else if (productId.includes('1_month') || productId.includes('monthly')) elitePackageType = 'monthly';
        }
        updateData.elitePackageType = elitePackageType;
        updateData.eliteProductId = productId || 'unknown';
      }

      if (!hasStartDate) {
        updateData.subscriptionStartDate = transactionDate || userData.verifiedAt || admin.firestore.FieldValue.serverTimestamp();
      }

      if (!hasExpiryDate) {
        let expiryDate = new Date();
        if (productId) {
          if (productId.includes('lifetime')) expiryDate.setFullYear(expiryDate.getFullYear() + 100);
          else if (productId.includes('12_months') || productId.includes('yearly')) expiryDate.setFullYear(expiryDate.getFullYear() + 1);
          else expiryDate.setMonth(expiryDate.getMonth() + 1);
        } else {
          expiryDate.setFullYear(expiryDate.getFullYear() + 100);
        }
        updateData.subscriptionExpiryDate = admin.firestore.Timestamp.fromDate(expiryDate);
      }

      if (!hasSubscriptionsExpiry) {
        const expiryTs = updateData.subscriptionExpiryDate || userData.subscriptionExpiryDate;
        if (expiryTs) {
          updateData['subscriptionsExpiry.gold'] = expiryTs;
          updateData['subscriptionsExpiry.forex'] = expiryTs;
          updateData['subscriptionsExpiry.crypto'] = expiryTs;
        }
      }

      if (!userData.subscriptionsStart) {
        const startTs = updateData.subscriptionStartDate || userData.subscriptionStartDate || admin.firestore.FieldValue.serverTimestamp();
        updateData['subscriptionsStart.gold'] = startTs;
        updateData['subscriptionsStart.forex'] = startTs;
        updateData['subscriptionsStart.crypto'] = startTs;
      }

      updateData.activeSubscriptions = admin.firestore.FieldValue.arrayUnion('gold', 'forex', 'crypto', 'elite');

      if (Object.keys(updateData).length > 0) {
        await firestore.collection('users').doc(userId).update(updateData);
        console.log(`  ✅ ĐÃ CẬP NHẬT THÀNH CÔNG!`);
        fixedCount++;
      }
    } catch (error) {
      console.error(`  ❌ LỖI: ${error.message}`);
      errorCount++;
    }
  }

  console.log('\n========================================');
  console.log(`📊 KẾT QUẢ: ✅ Sửa: ${fixedCount} | ⏭️ Bỏ qua: ${skippedCount} | ❌ Lỗi: ${errorCount}`);
  console.log('========================================');
  process.exit(0);
}

fixOldSubscriptions().catch((err) => { console.error('Lỗi:', err); process.exit(1); });
