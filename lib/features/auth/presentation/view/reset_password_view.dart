import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  static const String id = '/ResetPasswordView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: ResetPasswordViewBody(),
      ),
    );
  }
}
