import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/divider/or_divider_widget.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/log_in_view_sections/classic_log_in_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/log_in_view_sections/social_log_in_section.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          AuthenticationAppBar(),
          ClassicLogInSection(),
          OrDividerWidget(title: 'or continue with'),
          SocialLogInSection()
        ],
      ),
    );
  }
}
