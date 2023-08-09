import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';

class ProfilePhotoContainer extends StatelessWidget {
  const ProfilePhotoContainer({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: AppConfig.sizeData.width >= 600 ? 190.w : 45.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 1.w,
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
