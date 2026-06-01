// lib/features/signals/screens/signal_history_screen.dart

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:minvest_forex_app/core/providers/user_provider.dart';
import 'package:minvest_forex_app/features/signals/models/signal_model.dart';
import 'package:minvest_forex_app/features/signals/services/signal_service.dart';
import 'package:minvest_forex_app/features/signals/screens/signal_trading_history_screen.dart';
import 'package:minvest_forex_app/features/auth/screens/settings_screen.dart';
import 'package:minvest_forex_app/features/notifications/screens/notification_screen.dart';
import 'package:minvest_forex_app/features/notifications/providers/notification_provider.dart';
import 'package:minvest_forex_app/features/signals/widgets/custom_filter_dropdown.dart';
import 'package:minvest_forex_app/l10n/app_localizations.dart';
import 'package:minvest_forex_app/features/auth/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

enum AssetCategory { all, gold, crypto, forex }

class SignalHistoryScreen extends StatefulWidget {
  const SignalHistoryScreen({super.key});

  @override
  State<SignalHistoryScreen> createState() => _SignalHistoryScreenState();
}

class _SignalHistoryScreenState extends State<SignalHistoryScreen> with AutomaticKeepAliveClientMixin {
  final SignalService _signalService = SignalService();
  
  AssetCategory _assetCategory = AssetCategory.all;
  String _selectedGMT = 'GMT+7';
  String _selectedStatus = 'ALL';
  DateTime? _selectedDate;

  late Stream<List<Signal>> _historyStream;

  final List<String> _statusOptions = ['ALL', 'TP1', 'TP2', 'TP3', 'SL', 'CANCELLED', 'EXIT'];
  final List<String> _timezones = [
    'GMT-12', 'GMT-11', 'GMT-10', 'GMT-9', 'GMT-8', 'GMT-7', 'GMT-6', 'GMT-5', 'GMT-4', 'GMT-3', 'GMT-2', 'GMT-1',
    'GMT+0', 'GMT+1', 'GMT+2', 'GMT+3', 'GMT+4', 'GMT+5', 'GMT+6', 'GMT+7', 'GMT+8', 'GMT+9', 'GMT+10', 'GMT+11', 'GMT+12'
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initStream();
  }

  void _initStream() {
    _historyStream = _signalService.getAllSignals(
      limit: 200,
    );
  }

  void _updateStream() {
    setState(() {
      _historyStream = _signalService.getAllSignals(
        limit: (_selectedStatus == 'ALL' && _selectedDate == null) ? 200 : 1000,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = AppLocalizations.of(context)!;
    final userProvider = context.watch<UserProvider>();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          },
        ),
        title: Text(
          l10n.signalHistory,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Consumer<NotificationProvider>(
            builder: (context, notificationProvider, child) {
              final bool hasUnread = notificationProvider.unreadCount > 0;
              return Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_none, size: 28, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NotificationScreen()),
                      );
                    },
                  ),
                  if (hasUnread)
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        height: 9,
                        width: 9,
                        decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                            border: Border.fromBorderSide(BorderSide(color: Color(0xFF0D1117), width: 1.5))
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: userProvider.role == 'guest'
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.history_toggle_off,
                          color: Color(0xFF0CA3ED), size: 64),
                      const SizedBox(height: 16),
                      Text(
                        l10n.loginToViewHistory,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l10n.loginToViewHistoryDesc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF636363),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(const SignOutRequested());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0CA3ED),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(l10n.loginNow,
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              )
            : Column(
                children: [
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(child: _buildAssetDropdown(l10n)),
                        const SizedBox(width: 12),
                        Expanded(child: _buildGMTDropdown()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(child: _buildDatePicker(l10n)),
                        const SizedBox(width: 12),
                        Expanded(child: _buildStatusDropdown(l10n)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: StreamBuilder<List<Signal>>(
                      stream: _historyStream,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator(
                                  color: Color(0xFF276EFB)));
                        }
                        if (snapshot.hasError) {
                          return Center(
                              child: Text(l10n.errorLoadingHistory,
                                  style: const TextStyle(
                                      color: Colors.redAccent)));
                        }

                        final filteredSignals =
                            _applyFilters(snapshot.data ?? []);

                        if (filteredSignals.isEmpty) {
                          return Center(
                              child: Text(l10n.noHistoryFound,
                                  style:
                                      const TextStyle(color: Colors.white54)));
                        }

                        return ListView.builder(
                          padding: const EdgeInsets.only(bottom: 100),
                          itemCount: filteredSignals.length,
                          itemExtent: 70,
                          itemBuilder: (context, index) {
                            return _buildHistoryItem(
                                filteredSignals[index], index, l10n);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  bool _isGold(Signal s) => s.symbol.toUpperCase().contains('XAU');
  bool _isCrypto(Signal s) {
    final sym = s.symbol.toUpperCase();
    return sym.contains('BTC') || sym.contains('ETH') || sym.contains('BNB') || sym.contains('USDT') || sym.contains('CRYPTO');
  }
  bool _isForex(Signal s) {
    final sym = s.symbol.toUpperCase();
    return sym.contains('/') && !sym.contains('XAU') && !_isCrypto(s);
  }

  List<Signal> _applyFilters(List<Signal> signals) {
    Iterable<Signal> filtered = signals;

    // 1. Filter by asset category
    if (_assetCategory == AssetCategory.gold) {
      filtered = filtered.where(_isGold);
    } else if (_assetCategory == AssetCategory.crypto) {
      filtered = filtered.where(_isCrypto);
    } else if (_assetCategory == AssetCategory.forex) {
      filtered = filtered.where(_isForex);
    }

    // 2. Remove the latest running signal for each category (matching Web logic)
    final goldLatestId = filtered.where(_isGold).where((s) => s.status.toLowerCase() == 'running').take(1).map((e) => e.id).firstOrNull;
    final cryptoLatestId = filtered.where(_isCrypto).where((s) => s.status.toLowerCase() == 'running').take(1).map((e) => e.id).firstOrNull;
    final forexLatestId = filtered.where(_isForex).where((s) => s.status.toLowerCase() == 'running').take(1).map((e) => e.id).firstOrNull;
    final latestIds = {goldLatestId, cryptoLatestId, forexLatestId}.whereType<String>().toSet();

    filtered = filtered.where((s) => !latestIds.contains(s.id));

    // 3. Filter by date
    if (_selectedDate != null) {
      filtered = filtered.where((s) {
        final date = s.createdAt.toDate();
        return date.day == _selectedDate!.day && date.month == _selectedDate!.month && date.year == _selectedDate!.year;
      });
    }

    // 4. Filter by status
    if (_selectedStatus != 'ALL' && _selectedStatus != 'TẤT CẢ') {
      filtered = filtered.where((s) {
        if (_selectedStatus == 'TP1') return s.hitTps.contains(1) && !s.hitTps.contains(2);
        if (_selectedStatus == 'TP2') return s.hitTps.contains(2) && !s.hitTps.contains(3);
        if (_selectedStatus == 'TP3') return s.hitTps.contains(3);
        
        final res = (s.result ?? '').toUpperCase();
        if (_selectedStatus == 'SL') return res.contains('SL HIT') && s.hitTps.isEmpty;
        if (_selectedStatus == 'CANCELLED' || _selectedStatus == 'ĐÃ HỦY') {
          final resLower = (s.result ?? '').toLowerCase();
          return s.status.toLowerCase() == 'cancelled' || resLower.contains('cancelled') || resLower.contains('cancel');
        }
        if (_selectedStatus == 'EXIT' || _selectedStatus == 'ADMIN ĐÓNG') {
          return (res.contains('EXIT') || res.contains('MANUAL_EXIT') || res.contains('EXITED BY ADMIN')) && s.hitTps.isEmpty;
        }
        return false;
      });
    } else {
      // Default: Show all except CANCELLED (matching Web logic)
      filtered = filtered.where((s) {
        final res = (s.result ?? '').toLowerCase();
        return s.status.toLowerCase() != 'cancelled' && !res.contains('cancelled') && !res.contains('cancel');
      });
    }

    return filtered.toList();
  }

  Widget _buildAssetDropdown(AppLocalizations l10n) {
    return CustomFilterDropdown<AssetCategory>(
      value: _assetCategory,
      items: [
        CustomDropdownItem(value: AssetCategory.all, label: l10n.allAssets),
        CustomDropdownItem(value: AssetCategory.gold, label: l10n.assetGold),
        CustomDropdownItem(value: AssetCategory.crypto, label: l10n.assetCrypto),
        CustomDropdownItem(value: AssetCategory.forex, label: l10n.assetForex),
      ],
      onChanged: (v) => setState(() => _assetCategory = v as AssetCategory),
    );
  }

  Widget _buildGMTDropdown() {
    return CustomFilterDropdown<String>(
      value: _selectedGMT,
      items: _timezones.map((tz) => CustomDropdownItem(value: tz, label: tz)).toList(),
      onChanged: (v) => setState(() => _selectedGMT = v as String),
    );
  }

  Widget _buildStatusDropdown(AppLocalizations l10n) {
    final statusMap = {
      'ALL': l10n.allStatus,
      'TP1': 'TP1',
      'TP2': 'TP2',
      'TP3': 'TP3',
      'SL': 'SL',
      'CANCELLED': l10n.cancelled,
      'EXIT': l10n.filterStatusExitByAdmin,
    };

    return CustomFilterDropdown<String>(
      value: _selectedStatus,
      items: _statusOptions.map((st) => CustomDropdownItem(value: st, label: statusMap[st] ?? st)).toList(),
      onChanged: (v) {
        _selectedStatus = v as String;
        _updateStream();
      },
    );
  }

  Widget _buildDatePicker(AppLocalizations l10n) {
    return GestureDetector(
      onTap: _showCustomDatePicker,
      child: _buildFilterBox(l10n.filterDate, _selectedDate != null ? DateFormat('dd MMM').format(_selectedDate!) : l10n.selectDate),
    );
  }

  void _showCustomDatePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            height: 483,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withValues(alpha: 0.12),
                  Colors.white.withValues(alpha: 0.04),
                ],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              border: Border.all(
                width: 1.5,
                color: Colors.white.withValues(alpha: 0.2),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.4),
                  blurRadius: 20,
                  offset: const Offset(0, -6),
                ),
              ],
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.dark(
                  primary: Color(0xFF276EFB),
                  onPrimary: Colors.white,
                  surface: Colors.transparent,
                  onSurface: Colors.white,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Expanded(
                    child: CalendarDatePicker(
                      initialDate: _selectedDate ?? DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime.now(),
                      onDateChanged: (date) {
                        _selectedDate = date;
                        _updateStream();
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFilterBox(String label, String value, {bool isSelected = false}) {
    return Container(
      height: 41,
      padding: const EdgeInsets.all(1), // Độ dày viền
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withValues(alpha: 0.6),
            Colors.white.withValues(alpha: 0),
            Colors.white.withValues(alpha: 0),
            Colors.white.withValues(alpha: 0.7),
          ],
          stops: const [0.0, 0.12, 0.88, 1.0],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF161616),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  color: isSelected ? const Color(0xFF276EFB) : const Color(0xFF686868),
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                  fontFamily: 'Be Vietnam Pro',
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            Icon(Icons.keyboard_arrow_down, color: isSelected ? const Color(0xFF276EFB) : const Color(0xFF686868), size: 18),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryItem(Signal signal, int index, AppLocalizations l10n) {
    final bool isEven = index % 2 == 0;
    DateTime date = signal.createdAt.toDate();
    int offset = int.tryParse(_selectedGMT.replaceAll('GMT', '').replaceAll('+', '')) ?? 0;
    date = date.toUtc().add(Duration(hours: offset));
    final String formattedDate = DateFormat('dd MMM hh:mm a').format(date);
    
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignalTradingHistoryScreen(signal: signal)));
      },
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(color: isEven ? const Color(0xFF161616) : const Color(0xFF080808)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    signal.symbol.replaceAll('/', ''),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    formattedDate,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Color(0xFF636363), fontSize: 12),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                signal.getTranslatedResult(l10n),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: signal.getStatusColor(), fontSize: 14),
              ),
            ),
            Expanded(
              flex: 1,
              child: Builder(
                builder: (context) {
                  num? pipsVal = signal.closedPips;
                  if (signal.hitTps.isNotEmpty && pipsVal != null && pipsVal < 0) {
                    pipsVal = pipsVal.abs();
                  }
                  return Text(
                    pipsVal != null ? (pipsVal >= 0 ? '+${pipsVal.toStringAsFixed(0)}' : pipsVal.toStringAsFixed(0)) : '-',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: (pipsVal ?? 0) >= 0 ? const Color(0xFF00BB32) : const Color(0xFFE3001E), fontSize: 14),
                  );
                }
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                signal.entryPrice.toString(),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Color(0xFF636363), fontSize: 14),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                signal.type.toUpperCase(),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: signal.type.toLowerCase() == 'buy' ? const Color(0xFF00BB32) : const Color(0xFFE3001E), fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
