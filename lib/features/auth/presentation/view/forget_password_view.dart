import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  static const String id = '/ForgetPasswordView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: ForgetPasswordViewBody(),
      ),
    );
  }
}
