import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/divider/or_divider_widget.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/let_you_in_classic_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/let_you_in_social_section.dart';

class SocialLogInViewBody extends StatelessWidget {
  const SocialLogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            LetYouInSocialSection(),
            OrDividerWidget(title: 'or'),
            LetYouInClassicSection(),
          ],
        ),
      ),
    );
  }
}
