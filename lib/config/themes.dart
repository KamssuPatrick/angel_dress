import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  AppTheme._();

  // static const Color primaryColor = Color(0xFF2E83F8);
  // static const Color accentColor = Color(0xFF00E676);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    accentColor: AppColors.secondary,
    fontFamily: 'Inter',
    backgroundColor: AppColors.background,
    errorColor: AppColors.error,
    textTheme: const TextTheme(
      headline6: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    accentColor: AppColors.secondary,
    fontFamily: 'Inter',
    textTheme: const TextTheme(
      headline6: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}