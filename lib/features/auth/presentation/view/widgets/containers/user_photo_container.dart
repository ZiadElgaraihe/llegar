import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';

class UserPhotoContainer extends StatelessWidget {
  const UserPhotoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225.h,
      width: 225.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 3.w,
        ),
        image: const DecorationImage(
          image: AssetImage(AppImages.imagesBackgroundPhotoPng),
          colorFilter: ColorFilter.mode(
            AppColors.kPrimaryColor,
            BlendMode.srcATop,
          ),
        ),
      ),
    );
  }
}
