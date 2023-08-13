import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';

class EditImageButton extends StatelessWidget {
  const EditImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
      width: 22.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.w),
        color: AppColors.kPrimaryColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 6.h,
            ),
            child: SvgPicture.asset(
              AppIcons.iconsEdit,
            ),
          ),
        ),
      ),
    );
  }
}
