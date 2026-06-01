// lib/features/signals/screens/signal_trading_history_screen.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:minvest_forex_app/features/signals/models/signal_model.dart';
import 'package:minvest_forex_app/l10n/app_localizations.dart';

class SignalTradingHistoryScreen extends StatelessWidget {
  final Signal signal;

  const SignalTradingHistoryScreen({super.key, required this.signal});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  l10n.tradingHistoryTitle,
                  style: TextStyle(
                    color: Color(0xFF636363),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 36),

                // TP3 (Nếu có)
                if (signal.hitTps.contains(3))
                  _buildHistoryEvent(
                    title: l10n.tp3Live,
                    price: signal.takeProfits.length > 2 ? signal.takeProfits[2].toString() : '-',
                    description: l10n.targetReached,
                    time: signal.createdAt.toDate().add(const Duration(hours: 3)),
                    isPriceGreen: true,
                  ),

                // TP2 (Nếu có)
                if (signal.hitTps.contains(2))
                  _buildHistoryEvent(
                    title: l10n.tp2Live,
                    price: signal.takeProfits.length > 1 ? signal.takeProfits[1].toString() : '-',
                    description: l10n.targetReached,
                    time: signal.createdAt.toDate().add(const Duration(hours: 2)),
                    isPriceGreen: true,
                  ),

                // TP1 (Nếu có)
                if (signal.hitTps.contains(1))
                  _buildHistoryEvent(
                    title: l10n.tp1Live,
                    price: signal.takeProfits.isNotEmpty ? signal.takeProfits[0].toString() : '-',
                    description: l10n.targetReached,
                    time: signal.createdAt.toDate().add(const Duration(hours: 1)),
                    isPriceGreen: true,
                  ),

                // SL Hit (Nếu có)
                if (signal.result?.toLowerCase() == 'sl hit')
                  _buildHistoryEvent(
                    title: l10n.signalStatusSlHit,
                    price: signal.stopLoss.toString(),
                    description: l10n.stopLossTriggered,
                    time: signal.createdAt.toDate().add(const Duration(hours: 1)),
                    isPriceGreen: false,
                    titleColor: const Color(0xFFE3001E),
                  ),

                // Matched
                if (signal.isMatched)
                  _buildHistoryEvent(
                    title: l10n.signalMatched,
                    price: '',
                    description: l10n.matched,
                    time: signal.matchedAt?.toDate() ?? signal.createdAt.toDate().add(const Duration(minutes: 30)),
                    titleColor: const Color(0xFF276EFB),
                  ),

                // Created
                _buildHistoryEvent(
                  title: l10n.signalCreated,
                  price: '',
                  description: l10n.entryWithPrice(signal.entryPrice.toString()),
                  time: signal.createdAt.toDate(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHistoryEvent({
    required String title,
    required String price,
    required String description,
    required DateTime time,
    bool isPriceGreen = false,
    Color titleColor = Colors.white,
  }) {
    final String formattedTime = DateFormat('dd/MM HH:mm').format(time);

    return Container(
      margin: const EdgeInsets.only(bottom: 38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: titleColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (price.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      Text(
                        price,
                        style: TextStyle(
                          color: isPriceGreen ? const Color(0xFF00BB32) : const Color(0xFFE3001E),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                formattedTime,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}