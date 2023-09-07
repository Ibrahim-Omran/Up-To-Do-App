import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    //scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.background,

    //appBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      centerTitle: true,
    ),

    //text theme
    textTheme: TextTheme(
      displayLarge:  GoogleFonts.lato(
        color: AppColors.white.withOpacity(0.87),
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),

      displayMedium:  GoogleFonts.lato(
        color: AppColors.white.withOpacity(0.87),
        fontSize: 16,
      ),

      displaySmall: GoogleFonts.lato(
        color: AppColors.white.withOpacity(0.44),
        fontSize: 16,
      ),
    ),

    //button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          )),
    ),

  );
}

ThemeData getAppDarkTheme() {
  return ThemeData(
    primaryColor: AppColors.red,
    //scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.red,

    //appBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      centerTitle: true,
    ),

    //text theme
    textTheme: TextTheme(
      displayLarge:  GoogleFonts.lato(
        color: AppColors.white.withOpacity(0.87),
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),

      displayMedium:  GoogleFonts.lato(
        color: AppColors.white.withOpacity(0.87),
        fontSize: 16,
      ),

      displaySmall: GoogleFonts.lato(
        color: AppColors.white.withOpacity(0.44),
        fontSize: 16,
      ),
    ),

    //button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          )),
    ),

  );
}

