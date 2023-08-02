import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/more_personal_data_sign_up_view_body.dart';

class MorePersonalDataSignUpView extends StatelessWidget {
  const MorePersonalDataSignUpView({super.key});

  static const String id = '/MorePersonalDataSignUpView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const Scaffold(
        body: MorePersonalDataSignUpViewBody(),
      ),
    );
  }
}
