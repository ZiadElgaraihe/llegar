import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class AddItemDataTextFormField extends StatelessWidget {
  const AddItemDataTextFormField({
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
    return TextFormField(
      keyboardType: keyboardType,
      style: TextStyles.textStyle14.copyWith(
        fontWeight: FontWeight.w500,
      ),
      validator: (value) {
        return validator(value, hint);
      },
      onSaved: onSaved,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kLightGrey,
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 24.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color: AppColors.kGreen,
            width: 1.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color: AppColors.kRed,
            width: 1.w,
          ),
        ),
      ),
    );
  }
}
