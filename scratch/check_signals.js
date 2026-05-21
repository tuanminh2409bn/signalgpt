const admin = require('firebase-admin');

// Initialize Firebase Admin. It will automatically use the active Firebase CLI configuration if run locally.
try {
  admin.initializeApp({
    projectId: 'minvestforexapp-33dff'
  });
  console.log("Firebase initialized successfully with project minvestforexapp-33dff.");
} catch (e) {
  console.error("Error initializing Firebase:", e);
}

const db = admin.firestore();

async function run() {
  try {
    const snapshot = await db.collection('signals').get();
    console.log(`Total signals found: ${snapshot.size}`);
    
    const results = {};
    const statuses = {};
    
    snapshot.forEach(doc => {
      const data = doc.data();
      const res = data.result || 'undefined';
      const status = data.status || 'undefined';
      
      results[res] = (results[res] || 0) + 1;
      statuses[status] = (statuses[status] || 0) + 1;
      
      if (res.toLowerCase().includes('exit') || status === 'closed' && res.toLowerCase() === 'exited by admin') {
        console.log(`Matching Signal: ID=${doc.id}, Symbol=${data.symbol}, Status=${status}, Result=${res}, hitTps=${JSON.stringify(data.hitTps || [])}`);
      }
    });
    
    console.log("\nResults Breakdown:", results);
    console.log("\nStatuses Breakdown:", statuses);
    
  } catch (e) {
    console.error("Error running query:", e);
  }
}

run();
