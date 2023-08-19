import 'package:flutter/material.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/birth_date_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/gender_and_city_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/name_data_section.dart';

class PersonalDataSignUpViewForm extends StatelessWidget {
  const PersonalDataSignUpViewForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const NameDataSection(),
          const BirthDateSection(),
          GenderAndCitySection(),
        ],
      ),
    );
  }
}
