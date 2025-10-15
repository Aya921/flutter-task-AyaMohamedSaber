import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otex_app/core/theme/app_colors.dart';



abstract class AppTheme {
  static ThemeData getTheme(ColorScheme colors) {
    return ThemeData(
      colorScheme: colors,
       fontFamily: 'Tajawal',

       scaffoldBackgroundColor: AppColors.white,
        appBarTheme: AppBarTheme(
        foregroundColor: AppColors.white,
        titleSpacing: 0,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: AppColors.black,size: 30),
        titleTextStyle: GoogleFonts.roboto(
          color: AppColors.black,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white,
          textStyle: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
   
    );
  }

  static ThemeData lightTheme = getTheme(
    const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.blue,
      onPrimary: AppColors.white,
      secondary: AppColors.black,
      onSecondary: AppColors.white, 
      error: AppColors.red, 
      onError: AppColors.white, 
      surface: AppColors.white,
      onSurface: AppColors.black)

  );
}
