import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/log_in_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/buttons/social_row_buttons.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/auth_toggle_row.dart';

class SocialSignUpSection extends StatelessWidget {
  const SocialSignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 37.h),
        SocialRowButtons(
          onGooglePressed: () {},
          onApplePressed: () {},
          onFacebookPressed: () {},
        ),
        SizedBox(height: 29.68.h),
        AuthToggleRow(
          rowTitle: 'Already have an account?',
          btnTitle: 'Sign In',
          onTap: () {
            Navigator.pushReplacementNamed(context, LogInView.id);
          },
        ),
        SizedBox(height: 50.h),
      ],
    );
  }
}
