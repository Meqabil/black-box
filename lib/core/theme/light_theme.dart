import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/fonts.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: AppFonts.poppins,
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColor.mainRedColor,
        onPrimary: AppColor.mainNavyColor,
        secondary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: AppColor.oceanRed,
        onSurface: AppColor.textBlackColor,
        onSecondaryFixed: Colors.black,
      ),

      cardTheme: const CardTheme(
        color: AppColor.lightRed,
        elevation: 2,
      ),

      scaffoldBackgroundColor: Colors.white,
      cardColor: AppColor.lightRed,
      splashColor: AppColor.mainRedColor,
      canvasColor: AppColor.backgroundGreen,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.mainRedColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.lightRed,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColor.textFieldColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppColor.textBlackColor),
        bodyMedium: TextStyle(color: Colors.black87),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColor.dialogLightBackground,
          titleTextStyle: TextStyle(color: AppColor.dialogTitle),
          contentTextStyle: TextStyle(color: Colors.black),
      )
    );
  }
}