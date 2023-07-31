import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/divider/or_divider_widget.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/classic_log_in_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/social_log_in_section.dart';

class SocialLogInViewBody extends StatelessWidget {
  const SocialLogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SocialLogInSection(),
          OrDividerWidget(title: 'or'),
          ClassicLogInSection(),
        ],
      ),
    );
  }
}
