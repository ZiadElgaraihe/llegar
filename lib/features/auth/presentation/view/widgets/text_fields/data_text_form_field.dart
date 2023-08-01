import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class DataTextFormField extends StatelessWidget {
  const DataTextFormField(
      {super.key, required this.hint, required this.keyboardType});

  final String hint;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 398.w,
      child: TextFormField(
        keyboardType: keyboardType,
        style: TextStyles.textStyle15,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.kLightGrey,
          contentPadding:
              EdgeInsets.symmetric(vertical: 22.h, horizontal: 33.w),
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.w),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.w),
            borderSide: BorderSide(
              color: AppColors.kGreen,
              width: 1.w,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.w),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }
}
