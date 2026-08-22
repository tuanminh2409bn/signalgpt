// lib/core/services/purchase_service.dart

import 'dart:async';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class PurchaseService extends ChangeNotifier {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  FirebaseFunctions get _functions => FirebaseFunctions.instanceFor(region: 'asia-southeast1');
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  final Set<String> _androidIds = {
    'elite_1_month', 'elite_12_months', 'elite_lifetime',
  };
  
  // Các ID iOS
  final Set<String> _iosIds = {
    'elite.monthly', 'elite.yearly', 'elite.lifetime',
  };

  List<ProductDetails> _products = [];
  List<ProductDetails> get products => _products;
  bool _isStoreAvailable = false;
  bool get isStoreAvailable => _isStoreAvailable;
  bool _isPurchasePending = false;
  bool get isPurchasePending => _isPurchasePending;

  Future<void> initialize() async {
    if (kIsWeb) {
      debugPrint("Store không khả dụng trên Web.");
      return;
    }
    _isStoreAvailable = await _inAppPurchase.isAvailable();
    debugPrint("Store khả dụng: $_isStoreAvailable");
    if (_isStoreAvailable) {
      await _loadProducts();
      _subscription = _inAppPurchase.purchaseStream.listen((purchaseDetailsList) {
        _listenToPurchaseUpdated(purchaseDetailsList);
      }, onDone: () { _subscription?.cancel(); }, onError: (error) { _setPurchasePending(false); });
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> _loadProducts() async {
    final bool isIOS = !kIsWeb && defaultTargetPlatform == TargetPlatform.iOS;
    final Set<String> kIds = isIOS ? _iosIds : _androidIds;
    final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(kIds);
    if (response.notFoundIDs.isNotEmpty) {}
    _products = response.productDetails;
    notifyListeners();
  }

  Future<void> buyProduct(ProductDetails productDetails) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    final accountId = uid == null ? null : sha256.convert(utf8.encode(uid)).toString();
    final PurchaseParam purchaseParam = PurchaseParam(
      productDetails: productDetails,
      applicationUserName: accountId,
    );
    await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
  }

  Future<void> restorePurchases() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    final accountId = uid == null ? null : sha256.convert(utf8.encode(uid)).toString();
    _setPurchasePending(true);
    try {
      await _inAppPurchase.restorePurchases(applicationUserName: accountId);
    } finally {
      _setPurchasePending(false);
    }
  }

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    for (var purchaseDetails in purchaseDetailsList) {
      switch (purchaseDetails.status) {
        case PurchaseStatus.pending: _setPurchasePending(true); break;
        case PurchaseStatus.error:
          _setPurchasePending(false);
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          _handleSuccessfulPurchase(purchaseDetails);
          break;
        case PurchaseStatus.canceled:
          _setPurchasePending(false);
          break;
      }
    }
  }

  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    _setPurchasePending(true);
    bool verifiedByServer = false;

    final String verificationData = purchaseDetails.verificationData.serverVerificationData;

    if (verificationData.isEmpty) {
      debugPrint('❌ CẢNH BÁO: Dữ liệu biên lai (serverVerificationData) bị rỗng!');
      _setPurchasePending(false);
      return;
    }
    debugPrint('🧾 Lấy được biên lai kiểu mới (JWS), độ dài: ${verificationData.length} ký tự.');

    try {
      final String platform = (!kIsWeb && defaultTargetPlatform == TargetPlatform.iOS) ? 'ios' : 'android';
      final payload = {
        'platform': platform,
        'productId': purchaseDetails.productID,
        'orderId': purchaseDetails.purchaseID,
        'transactionData': {
          platform == 'ios' ? 'receiptData' : 'purchaseToken': verificationData
        },
      };

      debugPrint("🚀 Đang gửi payload lên Cloud Function 'verifyPurchase'...");
      final HttpsCallable callable = _functions.httpsCallable('verifyPurchase');
      final HttpsCallableResult result = await callable.call(payload);

      if (result.data['success'] == true) {
        verifiedByServer = true;
        debugPrint("🎉🎉🎉 XÁC THỰC THÀNH CÔNG! Server đã nâng cấp tài khoản. 🎉🎉🎉");
      } else {
        debugPrint("❌ SERVER TỪ CHỐI XÁC THỰC: ${result.data['message']}");
      }
    } catch (e) {
      debugPrint("🔥 LỖI NGHIÊM TRỌNG KHI GỌI HÀM VERIFYPURCHASE 🔥");
      if (e is FirebaseFunctionsException) {
        debugPrint("   - MÃ LỖI FIREBASE: ${e.code}");
        debugPrint("   - THÔNG ĐIỆP: ${e.message}");
        debugPrint("   - CHI TIẾT: ${e.details}");
      } else {
        debugPrint("   - LỖI KHÔNG XÁC ĐỊNH: $e");
      }
    } finally {
      if (verifiedByServer && purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
        debugPrint("✅ Đã gọi completePurchase() cho giao dịch.");
      }
      _setPurchasePending(false);
    }
  }

  void _setPurchasePending(bool isPending) {
    _isPurchasePending = isPending;
    notifyListeners();
  }
}
