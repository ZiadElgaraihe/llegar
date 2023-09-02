import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/columns/log_out_bottom_sheet_column.dart';

class LogOutBottomSheetContainer extends StatelessWidget {
  const LogOutBottomSheetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275.h,
      padding: EdgeInsets.only(
        top: 16.h,
        right: 21.w,
        left: 21.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.w),
        ),
        color: AppColors.kBackgroundColor,
      ),
      child: const LogOutBottomSheetColumn(),
    );
  }
}
