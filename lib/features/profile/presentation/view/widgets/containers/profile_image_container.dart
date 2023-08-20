import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';

class ProfileImageContainer extends StatelessWidget {
  const ProfileImageContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
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
