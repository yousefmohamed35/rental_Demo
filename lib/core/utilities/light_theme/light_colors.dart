import 'package:flutter/material.dart';

@immutable
class AppColors {
  const AppColors._();

  // Brand Colors (No Blue)
  static const Color primaryColor = Color(0xFF2E7D32); // Green
  static const Color secondaryColor = Color(0xFF43A047); // Lighter green
  static const Color accentColor = Color(0xFF8E24AA); // Purple

  // Notifications
  static const Color successColor = Color(0xFF2E7D32);
  static const Color warningColor = Color(0xFFFFA726);
  static const Color errorColor = Color(0xFFD32F2F);

  // Light Variants
  static const Color lightAccentColor = Color(0xFFF3E5F5); 
  static const Color lightSuccessColor = Color(0xFFE8F5E9);
  static const Color lightWarningColor = Color(0xFFFFF3E0);
  static const Color lightError = Color(0xFFFFEBEE);

  // Backgrounds
  static const Color scaffoldBackgroundColor = Color(0xFFF8F8F8);
  static const Color cardBG = Color(0xFFFFFFFF);

  // Text Colors
  static const Color mainText = Color(0xFF1E1E1E);
  static const Color secondText = Color(0xFF616161);

  // Borders
  static const Color borderColor = Color(0xFFE0E0E0);

  // Other
  static const Color divider = Color(0xFFE0E0E0);
  static const Color textFieldFilledColor = Color(0xFFF2F2F2);
}

const lightColorScheme = ColorScheme(
  primary: AppColors.primaryColor,
  secondary: AppColors.secondaryColor,
  surface: AppColors.cardBG,
  background: AppColors.scaffoldBackgroundColor,
  error: AppColors.errorColor,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: AppColors.mainText,
  onError: Colors.white,
  brightness: Brightness.light,
);
