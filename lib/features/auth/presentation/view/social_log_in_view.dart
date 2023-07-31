import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/social_log_in_view_body.dart';

class SocialLogInView extends StatelessWidget {
  const SocialLogInView({super.key});

  static const String id = '/SocialLogInView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SocialLogInViewBody(),
    );
  }
}
