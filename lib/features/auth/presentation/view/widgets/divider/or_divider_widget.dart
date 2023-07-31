import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 347.w,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              endIndent: 8.w,
              color: AppColors.kSecondaryColor,
              thickness: 1.h,
            ),
          ),
          Text(
            title,
            style: TextStyles.textStyle24.copyWith(
              color: AppColors.kSecondaryColor,
            ),
          ),
          Expanded(
            child: Divider(
              indent: 8.w,
              color: AppColors.kSecondaryColor,
              thickness: 1.h,
            ),
          ),
        ],
      ),
    );
  }
}
