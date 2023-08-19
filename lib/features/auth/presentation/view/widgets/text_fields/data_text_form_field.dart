import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class DataTextFormField extends StatelessWidget {
  const DataTextFormField({
    super.key,
    required this.hint,
    required this.keyboardType,
    required this.validator,
    required this.onSaved,
  });

  final String hint;
  final TextInputType keyboardType;
  final String? Function(String? value, String hint) validator;
  final void Function(String? newValue) onSaved;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 398.w,
      child: TextFormField(
        keyboardType: keyboardType,
        style: TextStyles.textStyle15,
        validator: (value) {
          return validator(value, hint);
        },
        onSaved: onSaved,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.kLightBlueGrey,
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
              color: AppColors.kRed,
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }
}
