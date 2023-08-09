import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class GreetingColumn extends StatelessWidget {
  const GreetingColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Good Morning',
              style: TextStyles.textStyle14.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 7.w),
            SvgPicture.asset(
              AppIcons.iconsWavingHand,
              height: 16.h,
              width: 16.w,
              fit: BoxFit.fill,
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          'Nour Mohamed',
          style: TextStyles.textStyle16,
        ),
      ],
    );
  }
}
