import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';

class JoinPremuimContainer extends StatelessWidget {
  const JoinPremuimContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.w),
        border: Border.all(
          color: AppColors.kYellow,
          width: 2.w,
        ),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30.w),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 17.h),
          child: Row(
            children: [
              SvgPicture.asset(
                AppImages.imagesCrown,
                height: 56.h,
                width: 63.w,
                fit: BoxFit.fill,
              ),
              SizedBox(width: 18.w),
              SizedBox(
                width: 231.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Join Premium!',
                      style: TextStyles.textStyle24.copyWith(
                        color: AppColors.kYellow,
                      ),
                    ),
                    Text(
                      'Enjoy the best deals with great features.',
                      style: TextStyles.textStyle16.copyWith(
                        color: AppColors.kYellow,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 18.w),
              SvgPicture.asset(
                AppIcons.iconsChevronRight,
                height: 21.3.h,
                width: 16.w,
                fit: BoxFit.fill,
                colorFilter: const ColorFilter.mode(
                  AppColors.kYellow,
                  BlendMode.srcATop,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
