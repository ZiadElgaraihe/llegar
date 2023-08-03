import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/forget_password_verification_code_view.dart';
import 'package:llegar/features/auth/presentation/view/forget_password_view.dart';
import 'package:llegar/features/auth/presentation/view/new_password_view.dart';
import 'package:llegar/features/auth/presentation/view/successful_view.dart';
import 'package:llegar/features/auth/presentation/view/sign_up_verification_code_view.dart';
import 'package:llegar/features/auth/presentation/view/log_in_view.dart';
import 'package:llegar/features/auth/presentation/view/more_personal_data_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/personal_data_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/social_log_in_view.dart';
import 'package:llegar/features/splash/presentation/view/splash_view.dart';
import 'package:llegar/features/splash/presentation/view/welcome_view.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext context)> routes = {
    '/': (context) => const SplashView(),
    WelcomeView.id: (context) => const WelcomeView(),
    SocialLogInView.id: (context) => const SocialLogInView(),
    SignUpView.id: (context) => const SignUpView(),
    LogInView.id: (context) => const LogInView(),
    PersonalDataSignUpView.id: (context) => const PersonalDataSignUpView(),
    MorePersonalDataSignUpView.id: (context) =>
        const MorePersonalDataSignUpView(),
    SignUpVerificationCodeView.id: (context) =>
        const SignUpVerificationCodeView(),
    SuccessfulView.id: (context) => const SuccessfulView(),
    ForgetPasswordView.id: (context) => const ForgetPasswordView(),
    ForgetPasswordVerificationCodeView.id: (context) =>
        const ForgetPasswordVerificationCodeView(),
    NewPasswordView.id: (context) => const NewPasswordView(),
  };
}
