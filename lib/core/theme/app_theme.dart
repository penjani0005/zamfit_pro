import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
class AppTheme {
  static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: AppColors.zambiaGreen,
    primaryColor: AppColors.zambiaGreen,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.zambiaGreen, foregroundColor: Colors.white),
  );
}
