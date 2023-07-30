import 'package:flutter/material.dart';
import 'package:llegar/features/splash/presentation/view/widgets/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  static const String id = '/WelcomeView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeViewBody(),
    );
  }
}
