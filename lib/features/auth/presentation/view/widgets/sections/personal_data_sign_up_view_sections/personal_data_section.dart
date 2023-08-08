import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/user_identification_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forms/personal_data_sign_up_view_form.dart';

class PersonalDataSection extends StatefulWidget {
  const PersonalDataSection({super.key});

  @override
  State<PersonalDataSection> createState() => _PersonalDataSectionState();
}

class _PersonalDataSectionState extends State<PersonalDataSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PersonalDataSignUpViewForm(formKey: _formKey),
        ColoredButton(
          btnTitle: 'Continue',
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Navigator.pushNamed(context, UserIdentificationSignUpView.id);
            }
          },
        ),
        SizedBox(height: 50.h),
      ],
    );
  }
}
