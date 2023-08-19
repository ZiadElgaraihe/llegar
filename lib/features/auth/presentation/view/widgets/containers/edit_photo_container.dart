import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';

class EditPhotoContainer extends StatelessWidget {
  const EditPhotoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConfig.sizeData.width >= 600 ? 44.25.h : 34.25.h,
      width: 42.28.w,
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: Material(
        color: AppColors.kTransparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(6.h),
            child: SvgPicture.asset(AppIcons.iconsEdit),
          ),
        ),
      ),
    );
  }
}
