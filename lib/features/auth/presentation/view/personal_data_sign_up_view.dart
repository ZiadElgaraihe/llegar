import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/personal_data_sign_up_view_body.dart';

class PersonalDataSignUpView extends StatelessWidget {
  const PersonalDataSignUpView({super.key});

  static const String id = '/PersonalDataSignUpView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: PersonalDataSignUpViewBody(),
      ),
    );
  }
}
