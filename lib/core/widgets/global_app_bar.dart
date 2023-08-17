import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/functions/future_delayed_navigator.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class GlobalAppBar extends StatelessWidget {
  const GlobalAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              futureDelayedNavigator(
                () {
                  Navigator.pop(context);
                },
              );
            },
            borderRadius: BorderRadius.circular(25.w),
            child: Container(
              height: 34.h,
              width: 34.w,
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              child: SvgPicture.asset(
                AppIcons.iconsLeftTrend,
                width: 20.w,
                height: 22.h,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Text(
            title,
            style: TextStyles.textStyle24.copyWith(
              fontWeight: FontWeight.w600,
              fontFamily: GoogleFonts.inter().fontFamily,
              color: AppColors.kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
