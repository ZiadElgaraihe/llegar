import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/profile/presentation/view/widgets/rows/log_out_bottom_sheet_buttons_row.dart';

class LogOutBottomSheetColumn extends StatelessWidget {
  const LogOutBottomSheetColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 3.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: AppColors.kGrey,
            borderRadius: BorderRadius.circular(20.w),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h),
          child: Text(
            'Logout',
            style: TextStyles.textStyle24.copyWith(
              color: AppColors.kRed,
            ),
          ),
        ),
        Divider(
          thickness: 1.h,
          color: AppColors.kGrey,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h),
          child: Text(
            'Are you sure you want to log out?',
            style: TextStyles.textStyle20,
          ),
        ),
        const LogOutBottonSheetButtonsRow()
      ],
    );
  }
}
