import 'package:minvest_forex_app/features/signals/models/signal_model.dart';

class SignalAccessHelper {
  static bool canViewEntry(
    Signal signal,
    String? userTier,
    List<String> activeSubscriptions, {
    List<String>? unlockedSignals,
    Map<String, DateTime> subscriptionsExpiry = const {},
    DateTime? subscriptionExpiryDate,
  }) {
    final tier = (userTier ?? 'free').toLowerCase();
    
    // Elite users see everything
    if (tier == 'elite' &&
        (subscriptionExpiryDate == null || subscriptionExpiryDate.isAfter(DateTime.now()))) {
      return true;
    }

    // Check if specifically unlocked with token
    if (unlockedSignals != null && unlockedSignals.contains(signal.id)) {
      return true;
    }

    final subscriptions = activeSubscriptions.map((value) => value.toLowerCase()).toSet();
    final expiry = subscriptionsExpiry[signal.categoryKey];
    if (subscriptions.contains(signal.categoryKey) &&
        expiry != null &&
        expiry.isAfter(DateTime.now())) {
      return true;
    }

    return false;
  }
}
