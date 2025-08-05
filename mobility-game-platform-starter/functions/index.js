
const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.handleScan = functions.https.onCall((data, context) => {
  const { userId, tagId, location } = data;

  // Example: Log scan to Firestore
  return admin.firestore().collection("scans").add({
    userId,
    tagId,
    location,
    timestamp: admin.firestore.FieldValue.serverTimestamp(),
  }).then(() => {
    return { success: true, message: "Scan logged successfully" };
  });
});
