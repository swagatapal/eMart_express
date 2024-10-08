import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _instance = AppColors._internal();

  factory AppColors() {
    return _instance;
  }

  AppColors._internal();

  //General
  static const Color primaryButtonColor = Color(0xFF00707E);
  static const Color courseContentBackgroundColor = Color(0xFFD9EFF2);

  static const Color white = Color(0xFFFFFFFF);
  static const Color white1 = Color(0xFFF9F9F9);
  static const Color circleBackground = Color(0xFFD9EFF2);
  static const Color colorSecondaryText2 = Color(0xFF7D7D7D);
  static const Color black = Color(0xFF000000);
  static const Color black1 = Color(0xFF222222);
  static const Color lightBackground = Color(0xFFD9EFF2);
  static const Color red = Color(0xFFDB3022);
  static const Color red1 = Color(0xFFD32626);
  static const Color grey = Color(0xFF9B9B9B);
  static const Color yellow = Color(0xFFFFBA49);

}