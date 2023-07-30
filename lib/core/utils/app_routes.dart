import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/log_in_with_view.dart';
import 'package:llegar/features/splash/presentation/view/splash_view.dart';
import 'package:llegar/features/splash/presentation/view/welcome_view.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashView(),
    WelcomeView.id: (context) => const WelcomeView(),
    LogInWithView.id: (context) => const LogInWithView(),
  };
}
