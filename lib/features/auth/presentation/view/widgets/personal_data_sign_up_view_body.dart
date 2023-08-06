import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/more_personal_data_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/birth_date_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/gender_and_city_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/personal_data_sign_up_view_sections/name_data_section.dart';

class PersonalDataSignUpViewBody extends StatefulWidget {
  const PersonalDataSignUpViewBody({super.key});

  @override
  State<PersonalDataSignUpViewBody> createState() =>
      _PersonalDataSignUpViewBodyState();
}

class _PersonalDataSignUpViewBodyState
    extends State<PersonalDataSignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const AuthenticationAppBar(),
          Form(
            key: _formKey,
            child: const Column(
              children: [
                NameDataSection(),
                BirthDateSection(),
                GenderAndCitySection(),
              ],
            ),
          ),
          ColoredButton(
            btnTitle: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, MorePersonalDataSignUpView.id);
              }
            },
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
