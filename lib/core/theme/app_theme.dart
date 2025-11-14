import 'package:flutter/material.dart';

class AppTheme {
  // Color Palette
  static const Color primaryBlue = Color(0xFF1E40AF); // Deep blue - trust, professionalism
  static const Color secondaryGreen = Color(0xFF10B981); // Bright green - growth, success
  static const Color accentOrange = Color(0xFFF59E0B); // Warm orange - energy, motivation
  static const Color neutralWhite = Color(0xFFFFFFFF);
  static const Color neutralLightGray = Color(0xFFF3F4F6);
  static const Color neutralGray = Color(0xFF9CA3AF);
  static const Color neutralDarkGray = Color(0xFF4B5563);
  static const Color neutralBlack = Color(0xFF111827);

  // Typography
  static const String fontFamilyPoppins = 'Poppins';
  static const String fontFamilyInter = 'Inter';

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: primaryBlue,
        secondary: secondaryGreen,
        tertiary: accentOrange,
        surface: neutralWhite,
        background: neutralLightGray,
        error: Colors.red,
        onPrimary: neutralWhite,
        onSecondary: neutralWhite,
        onSurface: neutralBlack,
        onBackground: neutralBlack,
      ),
      scaffoldBackgroundColor: neutralLightGray,
      fontFamily: fontFamilyInter,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: neutralBlack,
        ),
        displayMedium: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: neutralBlack,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: neutralBlack,
        ),
        headlineMedium: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: neutralBlack,
        ),
        titleLarge: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: neutralBlack,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamilyInter,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: neutralBlack,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamilyInter,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: neutralDarkGray,
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamilyInter,
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: neutralGray,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryBlue,
        foregroundColor: neutralWhite,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: neutralWhite,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryBlue,
          foregroundColor: neutralWhite,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontFamily: fontFamilyPoppins,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: neutralWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: neutralGray),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: neutralGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryBlue, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      cardTheme: CardTheme(
        color: neutralWhite,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

