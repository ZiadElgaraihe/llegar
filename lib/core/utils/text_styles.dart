import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';

abstract class TextStyles {
  static TextStyle textStyle10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.kSecondaryColor,
    letterSpacing: 0.2.w
  );
  
  static TextStyle textStyle13 = TextStyle(
    fontSize: 13.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle textStyle14 = TextStyle(
    fontSize: 14.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle15 = TextStyle(
    fontSize: 15.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle textStyle16 = TextStyle(
    fontSize: 16.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle18 = TextStyle(
    fontSize: 18.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle20 = TextStyle(
    fontSize: 20.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle24 = TextStyle(
    fontSize: 24.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle32 = TextStyle(
    fontSize: 32.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle36 = TextStyle(
    fontSize: 36.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle40 = TextStyle(
    fontSize: 40.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle48 = TextStyle(
    fontSize: 48.sp,
    letterSpacing: 0.2.w,
    fontWeight: FontWeight.w700,
    color: AppColors.kSecondaryColor,
  );
}
