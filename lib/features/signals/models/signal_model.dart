import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:minvest_forex_app/l10n/app_localizations.dart';

class Signal {
  final String id;
  final String symbol;
  final String type;
  final String status;
  final double entryPrice;
  final double stopLoss;
  final List<double> takeProfits;
  final Timestamp createdAt;
  final Timestamp? matchedAt;
  final Timestamp? tp1HitAt;
  final Timestamp? tp2HitAt;
  final Timestamp? tp3HitAt;
  final Timestamp? slHitAt;
  final Timestamp? closedAt;
  final String? result;
  final num? pips;
  final dynamic reason;
  final String matchStatus;
  final List<int> hitTps;
  final bool isMatched;
  final String? leverage;
  final double? closedPrice;
  final double? closedPips;

  Signal({
    required this.id,
    required this.symbol,
    required this.type,
    required this.status,
    required this.entryPrice,
    required this.stopLoss,
    required this.takeProfits,
    required this.createdAt,
    this.matchedAt,
    this.tp1HitAt,
    this.tp2HitAt,
    this.tp3HitAt,
    this.slHitAt,
    this.closedAt,
    this.result,
    this.pips,
    this.reason,
    required this.matchStatus,
    this.hitTps = const [],
    this.isMatched = false,
    this.leverage,
    this.closedPrice,
    this.closedPips,
  });

  factory Signal.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Signal(
      id: doc.id,
      symbol: data['symbol'] ?? '',
      type: data['type'] ?? 'buy',
      status: data['status'] ?? 'running',
      entryPrice: (data['entryPrice'] ?? 0.0).toDouble(),
      stopLoss: (data['stopLoss'] ?? 0.0).toDouble(),
      takeProfits: (data['takeProfits'] as List<dynamic>? ?? const [])
          .whereType<num>()
          .map((value) => value.toDouble())
          .toList(growable: false),
      createdAt: data['createdAt'] ?? Timestamp.now(),
      matchedAt: data['matchedAt'],
      tp1HitAt: data['tp1HitAt'],
      tp2HitAt: data['tp2HitAt'],
      tp3HitAt: data['tp3HitAt'],
      slHitAt: data['slHitAt'],
      closedAt: data['closedAt'],
      result: data['result'],
      pips: data['pips'],
      reason: data['reason'],
      matchStatus: data['matchStatus'] ?? 'NOT MATCHED',
      hitTps: List<int>.from(data['hitTps'] ?? []),
      isMatched: data['isMatched'] ?? false,
      leverage: data['leverage'],
      closedPrice: data['closedPrice'] != null ? (data['closedPrice'] as num).toDouble() : null,
      closedPips: data['closedPips'] != null ? (data['closedPips'] as num).toDouble() : null,
    );
  }

  String getTranslatedResult(AppLocalizations l10n) {
    final lowercasedResult = result?.toLowerCase() ?? '';
    
    if (lowercasedResult.isNotEmpty) {
      if (lowercasedResult == 'exit' || lowercasedResult.startsWith('exit timeout')) {
        return 'Exit';
      }
      switch (lowercasedResult) {
        case 'sl hit':
          return l10n.slHit;
        case 'cancelled':
        case 'cancelled (new signal)':
          return l10n.cancelled;
        case 'exited by admin':
          return l10n.exitedByAdmin;
        case 'tp3 hit':
          return l10n.tp3Hit;
        default:
          return result!;
      }
    }

    if (hitTps.contains(3)) return l10n.tp3Hit;
    if (hitTps.contains(2)) return l10n.tp2Hit;
    if (hitTps.contains(1)) return l10n.tp1Hit;

    if (status == 'running') {
      return isMatched ? l10n.matched : l10n.notMatched;
    }

    return l10n.signalClosed;
  }

  Color getStatusColor() {
    final lowercasedResult = result?.toLowerCase() ?? '';
    
    if (lowercasedResult.isNotEmpty) {
      if (lowercasedResult == 'exit' || lowercasedResult.startsWith('exit timeout')) {
        return Colors.grey;
      }
      switch (lowercasedResult) {
        case 'sl hit':
          return Colors.redAccent;
        case 'cancelled':
        case 'cancelled (new signal)':
        case 'exited by admin':
          return Colors.grey;
        case 'tp3 hit':
          return Colors.greenAccent.shade400;
        default:
          return Colors.blueGrey.shade200;
      }
    }

    if (hitTps.isNotEmpty) return Colors.greenAccent.shade400;

    if (status == 'running') {
      return isMatched ? Colors.greenAccent.shade400 : Colors.amber.shade400;
    }

    return Colors.blueGrey.shade200;
  }

  String get categoryKey {
    final normalized = symbol.toUpperCase().replaceAll('/', '');
    if (normalized.startsWith('XAU') || normalized.contains('GOLD')) {
      return 'gold';
    }
    const cryptoAssets = <String>{
      'BTC', 'ETH', 'SOL', 'BNB', 'XRP', 'ADA', 'DOGE', 'AVAX', 'DOT', 'LINK', 'LTC', 'TRX', 'TON',
    };
    if (cryptoAssets.any(normalized.startsWith)) return 'crypto';
    // Keep the legacy storage key for backward compatibility. The UI name is Currency Pair.
    return 'forex';
  }

  bool get isTerminal {
    final value = result?.toLowerCase() ?? '';
    return status.toLowerCase() == 'closed' ||
        value == 'sl hit' ||
        value == 'tp3 hit' ||
        value == 'cancelled' ||
        value == 'cancelled (new signal)' ||
        value == 'exited by admin' ||
        value == 'exit' ||
        value.startsWith('exit timeout');
  }

  double? get effectivePips => closedPips ?? pips?.toDouble();

  String formatPrice(num price) {
    final normalized = symbol.toUpperCase();
    if (normalized.contains('BTC')) return price.toStringAsFixed(1);
    if (normalized.contains('XAU')) return price.toStringAsFixed(2);
    if (normalized.contains('JPY')) return price.toStringAsFixed(3);
    if (categoryKey == 'crypto') return price.toStringAsFixed(4);
    return price.toStringAsFixed(5);
  }
}
