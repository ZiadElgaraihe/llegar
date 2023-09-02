import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class HelpCenterFaqContainer extends StatelessWidget {
  const HelpCenterFaqContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 312.h,
      width: 397.w,
      margin: EdgeInsets.only(
        top: 86.h,
        left: 17.w,
        right: 16.w,
        bottom: 196.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 36.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 3.w,
        ),
        borderRadius: BorderRadius.circular(20.w),
      ),
      child: TextField(
        maxLines: 10,
        style: TextStyles.textStyle20.copyWith(
          color: AppColors.kPrimaryColor,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: 'Type Your Message',
          hintStyle: TextStyles.textStyle20.copyWith(
            color: AppColors.kSecondaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
