// lib/core/utils/error_utils.dart

import 'package:firebase_auth/firebase_auth.dart';

class ErrorUtils {
  /// Converts any exception or error (especially Firebase-related ones) 
  /// into a clean, friendly Vietnamese message, while keeping necessary 
  /// keywords for UI checks (such as 'email-already-in-use').
  static String getFriendlyErrorMessage(dynamic e) {
    if (e == null) return 'Đã xảy ra lỗi không xác định.';

    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'email-already-in-use':
          return 'Email này đã được sử dụng bởi một tài khoản khác. (email-already-in-use)';
        case 'invalid-email':
          return 'Địa chỉ email không hợp lệ. (invalid-email)';
        case 'user-disabled':
          return 'Tài khoản này đã bị vô hiệu hóa. (user-disabled)';
        case 'user-not-found':
        case 'wrong-password':
        case 'invalid-credential':
          return 'Email hoặc mật khẩu không chính xác. (invalid-credential)';
        case 'weak-password':
          return 'Mật khẩu quá yếu. Vui lòng nhập mật khẩu dài hơn (tối thiểu 6 ký tự). (weak-password)';
        case 'operation-not-allowed':
          return 'Thao tác đăng nhập này chưa được kích hoạt. (operation-not-allowed)';
        case 'too-many-requests':
          return 'Quá nhiều yêu cầu đăng nhập thất bại. Vui lòng thử lại sau ít phút. (too-many-requests)';
        case 'network-request-failed':
          return 'Lỗi kết nối mạng. Vui lòng kiểm tra lại kết nối internet. (network-request-failed)';
        case 'requires-recent-login':
          return 'Vui lòng đăng nhập lại trước khi thực hiện thao tác bảo mật này. (requires-recent-login)';
        case 'channel-error':
          return 'Vui lòng điền đầy đủ các thông tin bắt buộc.';
        default:
          final msg = e.message ?? 'Đã xảy ra lỗi xác thực.';
          // Strip out raw firebase brackets like [firebase_auth/some-code]
          return msg.replaceAll(RegExp(r'\[.*\]'), '').trim();
      }
    }

    if (e is FirebaseException) {
      switch (e.code) {
        case 'permission-denied':
          return 'Bạn không có quyền thực hiện thao tác này. (permission-denied)';
        case 'unavailable':
          return 'Dịch vụ tạm thời không khả dụng. Vui lòng thử lại sau. (unavailable)';
        default:
          final msg = e.message ?? 'Đã xảy ra lỗi kết nối.';
          return msg.replaceAll(RegExp(r'\[.*\]'), '').trim();
      }
    }

    // Standard string/exception parsing
    final errString = e.toString();
    
    // Check for Firebase Auth codes inside general strings
    if (errString.contains('email-already-in-use') || errString.contains('already-exists')) {
      return 'Email này đã được sử dụng bởi một tài khoản khác. (email-already-in-use)';
    }
    if (errString.contains('invalid-email')) {
      return 'Địa chỉ email không hợp lệ. (invalid-email)';
    }
    if (errString.contains('user-disabled')) {
      return 'Tài khoản này đã bị vô hiệu hóa. (user-disabled)';
    }
    if (errString.contains('user-not-found') || errString.contains('wrong-password') || errString.contains('invalid-credential')) {
      return 'Email hoặc mật khẩu không chính xác. (invalid-credential)';
    }
    if (errString.contains('weak-password')) {
      return 'Mật khẩu quá yếu. Vui lòng nhập mật khẩu dài hơn (tối thiểu 6 ký tự). (weak-password)';
    }
    if (errString.contains('too-many-requests')) {
      return 'Quá nhiều yêu cầu đăng nhập thất bại. Vui lòng thử lại sau ít phút. (too-many-requests)';
    }
    if (errString.contains('network-request-failed')) {
      return 'Lỗi kết nối mạng. Vui lòng kiểm tra lại kết nối internet. (network-request-failed)';
    }

    // Clean brackets from other error strings if present
    return errString.replaceAll(RegExp(r'\[.*\]'), '').trim();
  }
}
