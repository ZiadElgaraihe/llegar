import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.h),
        SvgPicture.asset(
          AppImages.imagesLogo,
          height: 175.h,
          width: 175.w,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 18.2.h),
        Text(
          title,
          style: TextStyles.textStyle32.copyWith(
            color: AppColors.kSecondaryColor,
          ),
        ),
        SizedBox(height: 32.h),
      ],
    );
  }
}
