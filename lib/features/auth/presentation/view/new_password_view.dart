import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/new_password_view_body.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  static const String id = '/NewPasswordView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: NewPasswordViewBody(),
      ),
    );
  }
}
