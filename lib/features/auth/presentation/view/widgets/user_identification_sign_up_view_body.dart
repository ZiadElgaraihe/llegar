import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/user_identification_view_sections/user_identification_section.dart';

class UserIdentificationSignUpViewBody extends StatelessWidget {
  const UserIdentificationSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          AuthenticationAppBar(),
          UserIdentificationSection(),
        ],
      ),
    );
  }
}
