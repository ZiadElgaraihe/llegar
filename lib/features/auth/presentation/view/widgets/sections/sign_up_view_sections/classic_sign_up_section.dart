import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/personal_data_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forms/sign_up_view_form.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/remember_me_row.dart';

class ClassicSignUpSection extends StatefulWidget {
  const ClassicSignUpSection({super.key});

  @override
  State<ClassicSignUpSection> createState() => _ClassicSignUpSectionState();
}

class _ClassicSignUpSectionState extends State<ClassicSignUpSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignUpViewForm(formKey: _formKey),
        SizedBox(height: 26.h),
        const RememberMeRow(),
        SizedBox(height: 24.h),
        ColoredButton(
          btnTitle: 'Sign up',
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Navigator.pushNamed(context, PersonalDataSignUpView.id);
            }
          },
        ),
        SizedBox(height: 31.h),
      ],
    );
  }
}
