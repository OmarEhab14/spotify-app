import 'package:flutter/material.dart';
import 'package:spotify_music_app/core/config/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.light(
        primary: Colors.black,
        onPrimary: Colors.white,
        secondary: AppColors.darkGrey,
        onSecondary: AppColors.grey),
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: AppColors.grey)),
      hintStyle:
          const TextStyle(fontWeight: FontWeight.bold, color: AppColors.grey),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.primary,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0.0,
        textStyle: const TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.grey,
    ),
  );
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.dark(
        primary: Colors.white,
        onPrimary: Colors.black,
        secondary: AppColors.grey,
        onSecondary: AppColors.darkGrey),
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    fontFamily: 'Satoshi',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: AppColors.secondaryDarkGrey)),
      hintStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.secondaryDarkGrey,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.primary,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0.0,
        textStyle: const TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.secondaryDarkGrey,
    ),
  );
}
