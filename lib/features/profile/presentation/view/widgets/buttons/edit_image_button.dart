import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';

class EditImageButton extends StatelessWidget {
  const EditImageButton({
    super.key,
    required this.heigth,
    required this.width,
  });

  final double heigth;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.w),
        color: AppColors.kPrimaryColor,
      ),
      child: Material(
        color: AppColors.kTransparent,
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
