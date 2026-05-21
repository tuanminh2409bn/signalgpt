import 'package:minvest_forex_app/features/signals/models/signal_model.dart';

class SignalAccessHelper {
  static bool canViewEntry(Signal signal, String? userTier, List<String> activeSubscriptions, {List<String>? unlockedSignals}) {
    final tier = (userTier ?? 'free').toLowerCase();
    
    // Elite users see everything
    if (tier == 'elite') return true;

    // Check if specifically unlocked with token
    if (unlockedSignals != null && unlockedSignals.contains(signal.id)) return true;


    // If user has any active subscriptions, they can see all signals!
    if (activeSubscriptions.isNotEmpty) return true;

    return false;
  }
}
