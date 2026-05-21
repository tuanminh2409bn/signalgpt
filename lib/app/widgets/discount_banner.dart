import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final isVi = locale == 'vi';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: ShapeDecoration(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 3,
            color: Color(0xFF04B3E9),
          ),
          borderRadius: BorderRadius.circular(2),
        ),
        shadows: [
          BoxShadow(
            color: const Color(0xFF04B3E9).withValues(alpha: 0.3),
            blurRadius: 12,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              isVi ? 'TIẾT KIỆM ĐẾN 65%' : 'SAVE UP TO 65%',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Be Vietnam Pro',
                fontWeight: FontWeight.w600,
                letterSpacing: -1.2,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            isVi 
              ? 'Gói Năm -40% • Gói Trọn Đời -65%' 
              : 'Yearly -40% • Lifetime -65%',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF04B3E9),
              fontSize: 14,
              fontFamily: 'Be Vietnam Pro',
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
