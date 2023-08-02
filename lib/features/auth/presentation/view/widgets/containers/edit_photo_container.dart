import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';

class EditPhotoContainer extends StatelessWidget {
  const EditPhotoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: width >= 600 ? 44.25.h : 34.25.h,
      width: 42.28.w,
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(width >= 600 ? 10.h : 10.w),
      ),
      child: Material(
        color: Colors.transparent,
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
