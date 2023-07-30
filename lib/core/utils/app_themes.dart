import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';

abstract class AppThemes {
  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: AppColors.kBackgroundColor,
    primarySwatch: const MaterialColor(
      0xFF092C4C,
      <int, Color>{
        50: Color(0xFFF0F7FB),
        100: Color(0xFFD9ECF6),
        200: Color(0xFFA2C6E7),
        300: Color(0xFF6AA0D8),
        400: Color(0xFF3C7DCB),
        500: Color(0xFF0E5ABE),
        600: Color(0xFF0D52B5),
        700: Color(0xFF0A469D),
        800: Color(0xFF083A85),
        900: Color(0xFF052F70),
      },
    ),
    textTheme: GoogleFonts.urbanistTextTheme(
      ThemeData.light().textTheme.copyWith(
            bodyMedium: const TextStyle(
              color: AppColors.kPrimaryColor,
            ),
          ),
    ),
  );
}