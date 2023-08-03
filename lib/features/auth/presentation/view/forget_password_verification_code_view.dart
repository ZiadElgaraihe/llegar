import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forget_password_verification_code_view_body.dart';

class ForgetPasswordVerificationCodeView extends StatelessWidget {
  const ForgetPasswordVerificationCodeView({super.key});

  static const String id = '/ForgetPasswordVerificationCodeView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: ForgetPasswordVerificationCodeViewBody(),
      ),
    );
  }
}
