import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/profile/presentation/view/widgets/rows/premium_subscribe_feature_row.dart';

class PremiumSubscribeContainer extends StatelessWidget {
  const PremiumSubscribeContainer({super.key, required this.planFeatures});

  final Map<String, dynamic> planFeatures;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.w),
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 2.w,
        ),
        color: AppColors.kLightGrey,
      ),
      child: Material(
        color: AppColors.kTransparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(30.w),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 34.h),
            child: Column(
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
                Divider(
                  thickness: 1.h,
                  indent: 13.5.w,
                  endIndent: 13.5.w,
                ),
                PremiumSubscribeFeatureRow(
                  feature:
                      'Sharing ${planFeatures['sharingAmount']} of the rent amount with the application',
                ),
                PremiumSubscribeFeatureRow(
                  feature: (planFeatures['isVerified'])
                      ? 'verified account'
                      : 'Not verified account',
                ),
                PremiumSubscribeFeatureRow(
                  feature: 'Top on search level ${planFeatures['searchLevel']}',
                ),
                const PremiumSubscribeFeatureRow(
                  feature: '30 Days of subscription',
                ),
                PremiumSubscribeFeatureRow(
                  feature: '${planFeatures['numberOfAds']} Ads',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
