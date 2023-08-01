import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class AuthenticationAppBar extends StatelessWidget {
  const AuthenticationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Container(
          margin: EdgeInsets.only(left: 23.w),
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(
                Size(94.w, 34.h),
              ),
              padding: const MaterialStatePropertyAll(EdgeInsets.zero),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppIcons.iconsLeftTrend,
                  width: 20.w,
                  height: 22.h,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 16.w),
                Text(
                  'Back',
                  style: TextStyles.textStyle24.copyWith(
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: AppColors.kSecondaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
