import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:minvest_forex_app/core/models/exchange_app.dart';
import 'package:minvest_forex_app/core/utils/signal_access_helper.dart';
import 'package:minvest_forex_app/features/signals/models/signal_model.dart';

Signal buildSignal({
  String id = 'signal-1',
  String symbol = 'EUR/USD',
  String status = 'running',
  String? result,
  num? pips,
  double? closedPips,
}) {
  return Signal(
    id: id,
    symbol: symbol,
    type: 'buy',
    status: status,
    entryPrice: 1.08456,
    stopLoss: 1.08,
    takeProfits: const [1.09, 1.095, 1.10],
    createdAt: Timestamp.fromDate(DateTime.utc(2026, 8, 22)),
    result: result,
    pips: pips,
    closedPips: closedPips,
    matchStatus: 'MATCHED',
  );
}

void main() {
  test('Access the Exchange hides Binance, Bybit, and OKX', () {
    expect(isExchangeAppVisible('Binance'), isFalse);
    expect(isExchangeAppVisible(' bybit '), isFalse);
    expect(isExchangeAppVisible('OKX'), isFalse);
    expect(isExchangeAppVisible('Exness'), isTrue);
  });

  group('Signal category and entitlement', () {
    test('classifies Currency Pair, Gold, and Crypto using legacy storage keys', () {
      expect(buildSignal(symbol: 'EUR/USD').categoryKey, 'forex');
      expect(buildSignal(symbol: 'XAU/USD').categoryKey, 'gold');
      expect(buildSignal(symbol: 'BTC/USDT').categoryKey, 'crypto');
    });

    test('a category package cannot open another category', () {
      final currencyPair = buildSignal();
      expect(SignalAccessHelper.canViewEntry(currencyPair, 'free', ['gold']), isFalse);
      expect(
        SignalAccessHelper.canViewEntry(
          currencyPair,
          'free',
          ['forex'],
          subscriptionsExpiry: {'forex': DateTime.now().add(const Duration(days: 1))},
        ),
        isTrue,
      );
    });

    test('Elite never needs a token and an explicitly unlocked signal stays open', () {
      final signal = buildSignal();
      expect(SignalAccessHelper.canViewEntry(signal, 'elite', const []), isTrue);
      expect(
        SignalAccessHelper.canViewEntry(
          signal,
          'elite',
          const [],
          subscriptionExpiryDate: DateTime.now().subtract(const Duration(minutes: 1)),
        ),
        isFalse,
      );
      expect(
        SignalAccessHelper.canViewEntry(
          signal,
          'free',
          const [],
          unlockedSignals: const ['signal-1'],
        ),
        isTrue,
      );
    });
  });

  group('Signal values and history', () {
    test('formats prices by instrument precision', () {
      expect(buildSignal(symbol: 'EUR/USD').formatPrice(1.08456), '1.08456');
      expect(buildSignal(symbol: 'USD/JPY').formatPrice(146.1234), '146.123');
      expect(buildSignal(symbol: 'XAU/USD').formatPrice(3345.678), '3345.68');
      expect(buildSignal(symbol: 'BTC/USDT').formatPrice(64123.456), '64123.5');
    });

    test('keeps negative pips and prefers the actual closed pips value', () {
      final signal = buildSignal(pips: 20, closedPips: -15);
      expect(signal.effectivePips, -15);
    });

    test('recognizes terminal outcomes even in legacy documents', () {
      expect(buildSignal(status: 'running', result: 'SL Hit').isTerminal, isTrue);
      expect(buildSignal(status: 'running', result: 'TP1 Hit').isTerminal, isFalse);
    });
  });
}
