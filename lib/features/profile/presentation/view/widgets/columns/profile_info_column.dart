import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class ProfileInfoColumn extends StatelessWidget {
  const ProfileInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nour Mohamed',
          style: TextStyles.textStyle24,
        ),
        SizedBox(height: 4.h),
        Text(
          'nour_elagwany@gmail.com',
          style: TextStyles.textStyle16.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.kSecondaryColor,
          ),
        ),
      ],
    );
  }
}
