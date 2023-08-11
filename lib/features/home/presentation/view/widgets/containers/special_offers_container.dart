import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/home/presentation/view/widgets/columns/special_offers_container_content.dart';

class SpecialOffersContainer extends StatelessWidget {
  const SpecialOffersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.h,
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.w),
        color: AppColors.kLightGrey,
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 3.w,
        ),
      ),
      child: const SpecialOffersContainerContent(),
    );
  }
}
