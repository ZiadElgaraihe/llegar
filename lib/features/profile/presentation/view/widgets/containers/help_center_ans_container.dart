import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class HelpCenterAnsContainer extends StatelessWidget {
  const HelpCenterAnsContainer({
    super.key,
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 36.h,
      ),
      constraints: BoxConstraints(
        minHeight: 302.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 3.w,
        ),
        borderRadius: BorderRadius.circular(20.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyles.textStyle20,
            // maxLines: 3,
          ),
          SizedBox(height: 20.h),
          Divider(
            thickness: 1.h,
            color: AppColors.kDarkGrey,
          ),
          SizedBox(height: 20.h),
          Text(
            answer,
            style: TextStyles.textStyle20,
            // maxLines: 3,
          ),
        ],
      ),
    );
  }
}
