import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class RecentItemRow extends StatelessWidget {
  const RecentItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Tesla',
          style: TextStyles.textStyle20.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.kSecondaryColor,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.iconsClose,
            height: 24.h,
            width: 24.w,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
