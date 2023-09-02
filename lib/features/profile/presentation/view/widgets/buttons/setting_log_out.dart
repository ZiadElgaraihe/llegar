import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/log_out_bottom_sheet_container.dart';

class SettingLogOut extends StatelessWidget {
  const SettingLogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.w),
        onTap: () {
          _showLogOutBottomSheet(context);
        },
        child: Row(
          children: [
            SvgPicture.asset(
              AppIcons.iconsLogOut,
              height: 28.h,
              width: 24.w,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 24.w),
            Text(
              'Log Out',
              style: TextStyles.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
                color: const Color(0xFFEB5757),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogOutBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.w),
        ),
      ),
      builder: (context) => const LogOutBottomSheetContainer(),
    );
  }
}
