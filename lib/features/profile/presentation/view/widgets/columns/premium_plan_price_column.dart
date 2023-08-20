import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';

class PremiumPlanPriceColumn extends StatelessWidget {
  const PremiumPlanPriceColumn({
    super.key,
    required this.planFeatures,
  });

  final Map<String, dynamic> planFeatures;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AppImages.imagesCrown,
          height: 56.h,
          width: 64.6.w,
          fit: BoxFit.fill,
          colorFilter: const ColorFilter.mode(
            AppColors.kPrimaryColor,
            BlendMode.srcATop,
          ),
        ),
        SizedBox(height: 12.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '${planFeatures['price']} ',
                style: TextStyles.textStyle32.copyWith(
                  color: AppColors.kPrimaryColor,
                ),
              ),
              TextSpan(
                text: '/month',
                style: TextStyles.textStyle20.copyWith(
                  color: const Color.fromRGBO(30, 30, 30, 0.62),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
      ],
    );
  }
}
