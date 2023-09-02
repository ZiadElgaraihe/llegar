import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/social_log_in_view.dart';

class LogOutBottonSheetButtonsRow extends StatelessWidget {
  const LogOutBottonSheetButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColoredButton(
          title: 'Cancel',
          textColor: AppColors.kPrimaryColor,
          backgroundColor: AppColors.kLightBlueGrey,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ColoredButton(
          title: 'Yes, Logout',
          textColor: AppColors.kBackgroundColor,
          backgroundColor: AppColors.kPrimaryColor,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              SocialLogInView.id,
              (route) => false,
            );
          },
        ),
      ],
    );
  }
}
