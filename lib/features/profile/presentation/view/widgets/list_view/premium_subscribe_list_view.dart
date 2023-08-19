import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/profile/presentation/view/widgets/list_view/premium_plans_list_view.dart';

class PremiumSubscribeListView extends StatelessWidget {
  const PremiumSubscribeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      physics: const BouncingScrollPhysics(),
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Subscribe to Premium',
            style: TextStyles.textStyle32,
          ),
        ),
        SizedBox(height: 11.h),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 319.w,
            child: Text(
              'Enjoy the best offers with features that will improve your experience of the application services',
              style: TextStyles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.kSecondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 24.h),
        PremiumPlansListView(),
        SizedBox(height: 50.h),
      ],
    );
  }
}
