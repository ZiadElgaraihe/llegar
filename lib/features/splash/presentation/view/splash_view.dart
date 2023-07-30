import 'package:flutter/material.dart';
import 'package:llegar/features/splash/presentation/view/welcome_view.dart';
import 'package:llegar/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 5), () {
        Navigator.pushReplacementNamed(context, WelcomeView.id);
      }),
      builder: (context, snapshot) => const Scaffold(
        body: SplashViewBody(),
      ),
    );
  }
}
