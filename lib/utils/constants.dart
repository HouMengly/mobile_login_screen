import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF2D68FE);
  static const secondary = Color(0xFF6C7A89);
  static const gray100 = Color(0xFFF5F5F5);
  static const gray500 = Color(0xFF9E9E9E);
  static const gray700 = Color(0xFF616161);
  static const gray800 = Color(0xFF424242);
  static const success = Color(0xFF4CAF50);
  static const error = Color(0xFFF44336);
}

class AppTextStyles {
  static const heading1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.gray800,
  );

  static const buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const linkText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
}

class AppBorderRadius {
  static const none = Radius.circular(0);
  static const sm = Radius.circular(4);
  static const normal = Radius.circular(8);
  static const md = Radius.circular(12);
  static const lg = Radius.circular(16);
  static const xl = Radius.circular(20);
  static const xxl = Radius.circular(24);
  static const xxxl = Radius.circular(32);
  static const full = Radius.circular(9999);
  static const button = Radius.circular(8);
}
