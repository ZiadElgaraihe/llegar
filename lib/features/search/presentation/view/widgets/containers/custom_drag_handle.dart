import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';

class CustomDragHandle extends StatelessWidget {
  const CustomDragHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.w),
        color: AppColors.kSecondaryColor,
      ),
    );
  }
}
