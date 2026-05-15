import 'package:black_box/core/constants/global.dart';
import 'package:flutter/material.dart';
import '../constants/fonts.dart';
import 'app_color.dart';

class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: pref!.getString('lang') == 'ar' ? AppFonts.cairo : AppFonts.poppins,
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColor.mainRedColor,
        onPrimary: Colors.white,
        secondary: AppColor.primaryBlackColor,
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.black,
        surface: AppColor.oceanNavy,
        onSurface: AppColor.textWhiteColor,
        onSecondaryFixed: Colors.white
      ),


      cardTheme: const CardTheme(
        color: AppColor.mainRedColor,
        elevation: 2,
      ),
      scaffoldBackgroundColor: const Color(0xFF121212),
      cardColor:  AppColor.lightNavy,
      splashColor: Colors.white,
      canvasColor: AppColor.backgroundBlue,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.mainRedColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.mainNavyColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColor.mainNavyColor,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppColor.textWhiteColor),
        bodyMedium: TextStyle(color: Colors.white70),
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: AppColor.dialogDarkBackground,
        titleTextStyle: TextStyle(color: AppColor.dialogTitle),
        contentTextStyle: TextStyle(color: AppColor.dialogDarkContent)
      )
    );
  }
}