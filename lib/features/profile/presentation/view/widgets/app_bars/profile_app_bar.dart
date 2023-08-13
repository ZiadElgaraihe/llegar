import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 33.5.h),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.imagesLogo,
            height: 38.h,
            width: 38.w,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 16.w),
          Text(
            'Profile',
            style: TextStyles.textStyle24,
          ),
        ],
      ),
    );
  }
}
