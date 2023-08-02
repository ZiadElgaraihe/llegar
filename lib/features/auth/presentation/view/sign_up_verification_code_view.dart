import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sign_up_verification_code_view_body.dart';

class SignUpVerificationCodeView extends StatelessWidget {
  const SignUpVerificationCodeView({super.key});

  static const String id = '/SignUpVerificationCodeView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: SignUpVerificationCodeViewBody(),
      ),
    );
  }
}
