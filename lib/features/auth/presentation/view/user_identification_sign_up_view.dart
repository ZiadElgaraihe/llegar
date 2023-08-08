import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/user_identification_sign_up_view_body.dart';

class UserIdentificationSignUpView extends StatelessWidget {
  const UserIdentificationSignUpView({super.key});

  static const String id = '/UserIdentificationSignUpView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: UserIdentificationSignUpViewBody(),
      ),
    );
  }
}
