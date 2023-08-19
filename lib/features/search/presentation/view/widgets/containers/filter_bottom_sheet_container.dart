import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/search/presentation/view/widgets/filter_bottom_sheet_body.dart';

class FilterBottomSheetContainer extends StatelessWidget {
  const FilterBottomSheetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 868.h,
      padding: EdgeInsets.only(
        top: 16.h,
        left: 24.w,
        right: 24.w,
        bottom: 40.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.kBackgroundColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.w),
        ),
      ),
      child: const FilterBottomSheetBody(),
    );
  }
}
