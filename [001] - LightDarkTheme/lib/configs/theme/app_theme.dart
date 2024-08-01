import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme{

  static final lightTheme = ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      fontFamily: 'Satoshi',
      scaffoldBackgroundColor: AppColors.lightBackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            // textStyle: const TextStyle(
            //   fontSize: 16,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.white,
            // ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          )
      )
  );











  static final darkTheme = ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.dark,
      fontFamily: 'Satoshi',
      scaffoldBackgroundColor: AppColors.darkBackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            // textStyle: const TextStyle(
            //   fontSize: 16,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.white,
            // ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          )
      )
  );
}