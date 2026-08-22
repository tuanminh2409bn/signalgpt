import 'package:flutter/material.dart';
import 'package:minvest_forex_app/l10n/app_localizations.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;
  String? _loadError;
  String? _currentLang;
  String _selectedMarket = 'XAU/USD';

  static const _markets = <String, String>{
    'XAU/USD': 'OANDA:XAUUSD',
    'BTC/USDT': 'BINANCE:BTCUSDT',
    'ETH/USDT': 'BINANCE:ETHUSDT',
    'EUR/USD': 'OANDA:EURUSD',
    'GBP/USD': 'OANDA:GBPUSD',
  };

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xFF0D1117))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            if (mounted) {
              setState(() {
                _isLoading = true;
                _loadError = null;
              });
            }
          },
          onPageFinished: (String url) {
            if (mounted) {
              setState(() {
                _isLoading = false;
                _loadError = null;
              });
            }
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
            Page resource error:
            code: ${error.errorCode}
            description: ${error.description}
            errorType: ${error.errorType}
            isForMainFrame: ${error.isForMainFrame}
            ''');
            if (mounted) {
              setState(() {
                _isLoading = false;
                _loadError = error.description;
              });
            }
          },
        ),
      );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final lang = Localizations.localeOf(context).languageCode;
    if (_currentLang != lang) {
      _currentLang = lang;
      _loadChart();
    }
  }

  void _loadChart() {
    final subdomain = _currentLang == 'vi' ? 'vn' : 'www';
    final symbol = Uri.encodeComponent(_markets[_selectedMarket]!);
    _controller.loadRequest(Uri.parse('https://$subdomain.tradingview.com/chart/?symbol=$symbol'));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      appBar: AppBar(
        title: Text(
          l10n.marketChart,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<String>(
            initialValue: _selectedMarket,
            tooltip: 'Select market',
            onSelected: (value) {
              setState(() => _selectedMarket = value);
              _loadChart();
            },
            itemBuilder: (context) => _markets.keys
                .map((market) => PopupMenuItem(value: market, child: Text(market)))
                .toList(growable: false),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(_selectedMarket, style: const TextStyle(color: Colors.white)),
                  const Icon(Icons.arrow_drop_down, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false, // Tắt mặc định để tự kiểm soát khoảng cách với Nav Bar
        child: Padding(
          padding: const EdgeInsets.only(bottom: 160), // Giảm xuống 160 theo yêu cầu
          child: Stack(
            children: [
              WebViewWidget(controller: _controller),
              if (_isLoading)
                Container(
                  color: const Color(0xFF0D1117),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              if (_loadError != null && !_isLoading)
                Container(
                  color: const Color(0xFF0D1117),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.cloud_off, color: Colors.white54, size: 44),
                      const SizedBox(height: 12),
                      Text(_loadError!, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70)),
                      const SizedBox(height: 16),
                      OutlinedButton(onPressed: _loadChart, child: const Text('Retry')),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
