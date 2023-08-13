import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';

class ProfileRateRow extends StatelessWidget {
  const ProfileRateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.5.h),
          child: SvgPicture.asset(
            AppIcons.iconsStar,
            height: 19.h,
            width: 20.w,
            fit: BoxFit.fill,
            colorFilter:
                const ColorFilter.mode(AppColors.kYellow, BlendMode.srcATop),
          ),
        ),
      ),
    );
  }
}
