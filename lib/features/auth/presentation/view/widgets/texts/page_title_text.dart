import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class PageTitleText extends StatelessWidget {
  const PageTitleText({
    super.key,
    required this.title,
    required this.content,
    required this.titleImage,
  });

  final String title;
  final String content;
  final String titleImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 26.h),
        Row(
          children: [
            SizedBox(width: 16.w),
            Text(
              title,
              style: TextStyles.textStyle32.copyWith(
                color: AppColors.kSecondaryColor,
              ),
            ),
            SizedBox(width: 16.w),
            SvgPicture.asset(
              titleImage,
              height: 42.5.h,
              width: 42.5.w,
              fit: BoxFit.fill,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              content,
              style: TextStyles.textStyle20.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.kSecondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
