import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const String id = '/SignUpView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}
