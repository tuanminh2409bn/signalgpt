import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionModel {
  final String id;
  final String productId;
  final String status; // purchased, pending, error, etc.
  final DateTime timestamp;
  final double amount;
  final String currency;
  final String? platform; // ios, android

  TransactionModel({
    required this.id,
    required this.productId,
    required this.status,
    required this.timestamp,
    this.amount = 0.0,
    this.currency = 'USD',
    this.platform,
  });

  factory TransactionModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    final paymentMethod = data['paymentMethod'] as String? ?? '';
    final dateValue = data['transactionDate'] ?? data['timestamp'];
    return TransactionModel(
      id: doc.id,
      productId: data['productId'] ?? '',
      status: data['status'] ?? 'purchased',
      timestamp: (dateValue as Timestamp?)?.toDate() ?? DateTime.fromMillisecondsSinceEpoch(0),
      amount: (data['amount'] as num?)?.toDouble() ?? 0.0,
      currency: data['currency'] ?? 'USD',
      platform: data['platform'] ??
          (paymentMethod.endsWith('_ios')
              ? 'ios'
              : (paymentMethod.endsWith('_android') ? 'android' : null)),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'status': status,
      'timestamp': Timestamp.fromDate(timestamp),
      'amount': amount,
      'currency': currency,
      'platform': platform,
    };
  }
}
