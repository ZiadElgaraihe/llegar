import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/functions/future_delayed_navigator.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class SettingItemButton extends StatelessWidget {
  const SettingItemButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final String icon;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.w),
        onTap: () {
          futureDelayedNavigator(
            () {
              onTap();
            },
          );
        },
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: 28.h,
              width: 24.w,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 24.w),
            Text(
              title,
              style: TextStyles.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.kSecondaryColor,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              AppIcons.iconsChevronRight,
              height: 21.3.h,
              width: 16.w,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
