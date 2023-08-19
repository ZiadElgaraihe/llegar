import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class AddItemConditionTextFormField extends StatelessWidget {
  const AddItemConditionTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: TextFormField(
        style: TextStyles.textStyle14,
        maxLines: 10,
        onSaved: (newValue) {},
        decoration: InputDecoration(
          hintText: 'Write Your Condition',
          hintStyle: TextStyles.textStyle14.copyWith(
            color: AppColors.kSecondaryColor,
          ),
          filled: true,
          fillColor: AppColors.kLightGrey,
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 24.w),
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
        ),
      ),
    );
  }
}
