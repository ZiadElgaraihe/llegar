import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/premium_plan_features_column.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/premium_plan_price_column.dart';

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
                PremiumPlanPriceColumn(planFeatures: planFeatures),
                Divider(
                  thickness: 1.h,
                  indent: 13.5.w,
                  endIndent: 13.5.w,
                ),
                PremiumPlanFeaturesColumn(planFeatures: planFeatures),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
