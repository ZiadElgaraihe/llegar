import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';

class IdPhotoContainer extends StatelessWidget {
  const IdPhotoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 398.w,
              height: 259.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.w),
                border: Border.all(
                  color: AppColors.kPrimaryColor,
                  width: 3.w,
                ),
                image: const DecorationImage(
                  image: AssetImage(
                    AppImages.imagesIdBackgroundPng,
                  ),
                  colorFilter: ColorFilter.mode(
                    AppColors.kPrimaryColor,
                    BlendMode.srcATop,
                  ),
                ),
              ),
            );
  }
}