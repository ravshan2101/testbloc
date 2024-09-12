import 'package:flutter/material.dart';
import 'package:testbloc/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.lightBackground,
      brightness: Brightness.light,
      fontFamily: 'Satoshi',
      inputDecorationTheme: InputDecorationTheme(
        hintStyle:
            TextStyle(color: Color(0xff383838), fontWeight: FontWeight.w500),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.4),
            borderRadius: BorderRadius.circular(30)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.4),
            borderRadius: BorderRadius.circular(30)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              elevation: 0,
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));

  static final darkTheme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.darkBackground,
      brightness: Brightness.dark,
      fontFamily: 'Satoshi',
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle:
            TextStyle(color: Color(0xffA7A7A7), fontWeight: FontWeight.w500),
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.4),
            borderRadius: BorderRadius.circular(30)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.4),
            borderRadius: BorderRadius.circular(30)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: AppColors.primary,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));
}
