import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class PremiumSubscribeFeatureRow extends StatelessWidget {
  const PremiumSubscribeFeatureRow({
    super.key,
    required this.feature,
  });

  final String feature;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h),
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.iconsCircleCheckSolid,
            height: 24.h,
            width: 24.w,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 8.w),
          Text(
            feature,
            style: TextStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
