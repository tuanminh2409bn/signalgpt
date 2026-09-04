// lib/features/signals/services/signal_service.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:minvest_forex_app/features/signals/models/signal_model.dart';

class SignalService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<List<Signal>> getSignals({
    required bool isLive,
    required String userTier,
    String? symbol,
    bool allowUnauthenticated = false,
    int? limit,
  }) {
    if (_auth.currentUser == null && !allowUnauthenticated) {
      return Stream.value([]);
    }

    Query query = _firestore.collection('signals');

    if (isLive) {
      query = query.where('status', isEqualTo: 'running');
    } else {
      query = query.where('status', isEqualTo: 'closed');
    }
    
    // Add symbol filter
    if (symbol != null && symbol != 'All') {
      query = query.where('symbol', isEqualTo: symbol);
    }

    query = query.orderBy('createdAt', descending: true);

    if (isLive && userTier == 'demo') {
      query = query.limit(20);
    } else if (limit != null) {
      query = query.limit(limit);
    }

    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Signal.fromFirestore(doc)).toList();
    });
  }

  /// Lấy tín hiệu gần nhất (không lọc status) để Web/mobile chia Live & History.
  /// Luôn có trần `limit` — không bao giờ đọc cả collection (~20k+ docs).
  Stream<List<Signal>> getAllSignals({int? limit = 200}) {
    final effectiveLimit = (limit == null || limit <= 0) ? 500 : limit;
    Query query = _firestore
        .collection('signals')
        .orderBy('createdAt', descending: true)
        .limit(effectiveLimit);
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Signal.fromFirestore(doc)).toList();
    });
  }

  Future<Signal?> getSignalById(String signalId) async {
    try {
      final docSnapshot =
      await _firestore.collection('signals').doc(signalId).get();
      if (docSnapshot.exists) {
        return Signal.fromFirestore(docSnapshot);
      }
    } catch (e) {
      print('Lỗi khi lấy tín hiệu theo ID: $e');
    }
    return null;
  }
}
