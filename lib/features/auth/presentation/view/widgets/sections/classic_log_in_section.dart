import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/auth_toggle_row.dart';

class ClassicLogInSection extends StatelessWidget {
  const ClassicLogInSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 22.h),
        ColoredButton(
          btnTitle: 'Sign in with password',
          onPressed: () {},
        ),
        SizedBox(height: 32.h),
        AuthToggleRow(
          rowTitle: 'Don’t have an account?',
          btnTitle: 'Sign Up',
          onTap: () {},
        ),
      ],
    );
  }
}
