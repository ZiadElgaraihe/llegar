import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/default_button.dart';
import 'package:llegar/features/auth/presentation/view/log_in_view.dart';
import 'package:llegar/features/auth/presentation/view/sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/auth_toggle_row.dart';

class LetYouInClassicSection extends StatelessWidget {
  const LetYouInClassicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 22.h),
        DefaultButton(
          btnTitle: 'Sign in with password',
          onPressed: () {
            Navigator.pushNamed(context, LogInView.id);
          },
        ),
        SizedBox(height: 32.h),
        AuthToggleRow(
          rowTitle: 'Don’t have an account?',
          btnTitle: 'Sign Up',
          onTap: () {
            Navigator.pushNamed(context, SignUpView.id);
          },
        ),
      ],
    );
  }
}
