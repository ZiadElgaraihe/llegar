import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class WelcomePageViewItem extends StatelessWidget {
  const WelcomePageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.content,
  });

  final String image, title, content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          image,
          width: 398.w,
          height: 390.h,
          fit: BoxFit.fill,
        ),
        const Spacer(),
        FittedBox(
          child: Text(
            title,
            style: TextStyles.textStyle40,
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          content,
          style: TextStyles.textStyle18.copyWith(
            color: AppColors.kSecondaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
