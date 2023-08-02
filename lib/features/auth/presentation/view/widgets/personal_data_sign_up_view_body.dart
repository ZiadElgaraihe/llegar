import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/birth_date_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/gender_and_city_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/name_data_section.dart';

class PersonalDataSignUpViewBody extends StatelessWidget {
  const PersonalDataSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          AuthenticationAppBar(),
          NameDataSection(),
          BirthDateSection(),
          GenderAndCitySection(),
        ],
      ),
    );
  }
}
