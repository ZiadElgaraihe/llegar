import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/widgets/colored_button.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColoredButton(
          title: 'Reset',
          textColor: AppColors.kPrimaryColor,
          backgroundColor: const Color(0xFFE1E8FF),
          onPressed: () {},
        ),
        ColoredButton(
          title: 'Apply',
          textColor: AppColors.kBackgroundColor,
          backgroundColor: AppColors.kPrimaryColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
