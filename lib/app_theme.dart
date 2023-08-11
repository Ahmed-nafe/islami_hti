import 'package:flutter/material.dart';
import 'package:islami_hti/app_colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primiaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.accentColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.accentColor,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 30)),
    textTheme: TextTheme(
        bodySmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: AppColors.accentColor),
      titleSmall: TextStyle(fontSize: 18, color: AppColors.accentColor, fontWeight: FontWeight.bold)
    )
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primiaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.accentDarkColor,
        unselectedItemColor: AppColors.white,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 30)),
    textTheme: TextTheme(
        bodySmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: AppColors.white,),
        titleSmall: TextStyle(fontSize: 18, color: AppColors.white, fontWeight: FontWeight.bold),),
  );
}
