import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/divider/or_divider_widget.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/classic_log_in_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/social_log_in_section.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            const AuthenticationAppBar(),
            const ClassicLogInSection(),
            const OrDividerWidget(title: 'or continue with'),
            const SocialLogInSection()
          ],
        ),
      ),
    );
  }
}