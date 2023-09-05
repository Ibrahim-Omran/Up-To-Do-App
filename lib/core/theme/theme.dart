import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
    //scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.background,

    //appBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      centerTitle: true,
    ),

    //text theme
    textTheme: const TextTheme(
    ),

  );
}
