import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/buttons/social_row_buttons.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/auth_toggle_row.dart';

class SocialLogInSection extends StatelessWidget {
  const SocialLogInSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 18.h),
        SocialRowButtons(
          onGooglePressed: () {},
          onApplePressed: () {},
          onFacebookPressed: () {},
        ),
        SizedBox(height: 24.68.h),
        AuthToggleRow(
          rowTitle: 'Don\'t have an account?',
          btnTitle: 'Sign Up',
          onTap: () {
            Navigator.pushReplacementNamed(context, SignUpView.id);
          },
        ),
        SizedBox(height: 50.h),
      ],
    );
  }
}
