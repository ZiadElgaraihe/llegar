import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/verify_password_view.dart';
import 'package:llegar/features/auth/presentation/view/forget_password_view.dart';
import 'package:llegar/features/auth/presentation/view/reset_password_view.dart';
import 'package:llegar/features/auth/presentation/view/successful_view.dart';
import 'package:llegar/features/auth/presentation/view/verify_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/log_in_view.dart';
import 'package:llegar/features/auth/presentation/view/user_identification_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/personal_data_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/social_log_in_view.dart';
import 'package:llegar/features/home/presentation/view/special_offers_view.dart';
import 'package:llegar/features/home/presentation/view/top_deals_view.dart';
import 'package:llegar/features/home/presentation/view/wishlist_view.dart';
import 'package:llegar/features/navbar/presentation/view/navigation_view.dart';
import 'package:llegar/features/profile/presentation/view/add_item_view.dart';
import 'package:llegar/features/profile/presentation/view/my_activities_view.dart';
import 'package:llegar/features/splash/presentation/view/splash_view.dart';
import 'package:llegar/features/splash/presentation/view/welcome_view.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext context)> routes = {
    '/SplashView': (context) => const SplashView(),
    WelcomeView.id: (context) => const WelcomeView(),
    SocialLogInView.id: (context) => const SocialLogInView(),
    SignUpView.id: (context) => const SignUpView(),
    LogInView.id: (context) => const LogInView(),
    PersonalDataSignUpView.id: (context) => const PersonalDataSignUpView(),
    UserIdentificationSignUpView.id: (context) =>
        const UserIdentificationSignUpView(),
    VerifySignUpView.id: (context) => const VerifySignUpView(),
    SuccessfulView.id: (context) => const SuccessfulView(),
    ForgetPasswordView.id: (context) => const ForgetPasswordView(),
    VerifyPasswordView.id: (context) => const VerifyPasswordView(),
    ResetPasswordView.id: (context) => const ResetPasswordView(),
    NavigationView.id: (context) => const NavigationView(),
    WishlistView.id: (context) => const WishlistView(),
    SpecialOffersView.id: (context) => const SpecialOffersView(),
    TopDealsView.id: (context) => const TopDealsView(),
    MyActivitiesView.id: (context) => const MyActivitiesView(),
    AddItemView.id: (context) => const AddItemView(),
  };
}
