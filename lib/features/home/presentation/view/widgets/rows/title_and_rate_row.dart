import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class TopDealsTitleAndRateRow extends StatelessWidget {
  const TopDealsTitleAndRateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Car, Giza',
          style: TextStyles.textStyle20,
        ),
        const Spacer(),
        SvgPicture.asset(
          AppIcons.iconsStar,
          height: 20.h,
          width: 20.w,
          fit: BoxFit.fill,
        ),
        SizedBox(width: 6.w),
        Text(
          '5.0',
          style: TextStyles.textStyle20,
        ),
      ],
    );
  }
}
