import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/successful_sign_up_view_body.dart';

class SuccessfulSignUpView extends StatelessWidget {
  const SuccessfulSignUpView({super.key});

  static const String id = '/SuccessfulSignUpView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuccessfulSignUpViewBody(),
    );
  }
}
