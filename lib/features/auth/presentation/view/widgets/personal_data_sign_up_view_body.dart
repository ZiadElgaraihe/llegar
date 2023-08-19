import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/personal_data_section.dart';

class PersonalDataSignUpViewBody extends StatelessWidget {
  const PersonalDataSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AuthenticationAppBar(),
            PersonalDataSection(),
          ],
        ),
      ),
    );
  }
}
