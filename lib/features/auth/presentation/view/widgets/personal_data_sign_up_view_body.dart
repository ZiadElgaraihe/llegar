import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/birth_date_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/gender_and_city_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/name_data_section.dart';

class PersonalDataSignUpViewBody extends StatelessWidget {
  const PersonalDataSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AuthenticationAppBar(),
            NameDataSection(),
            BirthDateSection(),
            GenderAndCitySection(),
          ],
        ),
      ),
    );
  }
}
