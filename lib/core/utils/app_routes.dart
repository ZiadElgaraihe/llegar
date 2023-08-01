import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/log_in_view.dart';
import 'package:llegar/features/auth/presentation/view/personal_data_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/social_log_in_view.dart';
import 'package:llegar/features/splash/presentation/view/splash_view.dart';
import 'package:llegar/features/splash/presentation/view/welcome_view.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashView(),
    WelcomeView.id: (context) => const WelcomeView(),
    SocialLogInView.id: (context) => const SocialLogInView(),
    SignUpView.id: (context) => const SignUpView(),
    LogInView.id: (context) => const LogInView(),
    PersonalDataSignUpView.id: (context) => const PersonalDataSignUpView(),
  };
}
