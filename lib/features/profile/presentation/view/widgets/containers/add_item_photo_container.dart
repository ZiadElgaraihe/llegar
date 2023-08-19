import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class AddItemPhotoContainer extends StatelessWidget {
  const AddItemPhotoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 307.h,
      width: double.infinity,
      margin: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.w),
        color: AppColors.kLightBlueGrey,
      ),
      child: Material(
        color: AppColors.kTransparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(22.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppIcons.iconsAddPhoto,
                height: 32.h,
                width: 32.w,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 8.h),
              Text(
                'Add Photo',
                style: TextStyles.textStyle20.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kSecondaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
