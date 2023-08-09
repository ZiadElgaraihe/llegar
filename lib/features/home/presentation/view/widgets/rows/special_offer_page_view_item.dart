import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';

class SpecialOfferPageViewItem extends StatelessWidget {
  const SpecialOfferPageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 108.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '25%',
                style: TextStyles.textStyle36,
              ),
              SizedBox(height: 8.h),
              Text(
                'Week Deals!',
                style: TextStyles.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Get a new car discount, offer ends this week',
                style: TextStyles.textStyle10,
              ),
            ],
          ),
        ),
        SizedBox(width: 7.w),
        SizedBox(
          height: 139.h,
          width: 219.w,
          child: Image.asset(AppImages.imagesJeepCarPng),
        ),
      ],
    );
  }
}
