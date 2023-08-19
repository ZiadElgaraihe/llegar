import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class SpecialOffersCategoryItemButton extends StatelessWidget {
  const SpecialOffersCategoryItemButton({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 67.h,
            width: 67.w,
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 17.h),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.kLightBlueGrey,
              border: Border.all(
                color: AppColors.kPrimaryColor,
                width: 2.w,
              ),
            ),
            child: SvgPicture.asset(
              image,
              height: 33.h,
              width: 33.w,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 7.h),
          Text(
            title,
            style: TextStyles.textStyle16.copyWith(
              color: AppColors.kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
