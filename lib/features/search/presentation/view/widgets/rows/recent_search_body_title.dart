import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/text_styles.dart';

class RecentSearchBodyTitle extends StatelessWidget {
  const RecentSearchBodyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recent',
          style: TextStyles.textStyle20,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Clear All',
            style: TextStyles.textStyle14.copyWith(
              color: AppColors.kSecondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
