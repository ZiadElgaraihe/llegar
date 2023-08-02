import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/divider/or_divider_widget.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/sign_up_view_sections/classic_sign_up_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/sign_up_view_sections/social_sign_up_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          AuthenticationAppBar(),
          ClassicSignUpSection(),
          OrDividerWidget(title: 'or continue with'),
          SocialSignUpSection(),
        ],
      ),
    );
  }
}
