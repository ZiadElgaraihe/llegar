import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/personal_data_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/remember_me_row.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/email_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/password_text_form_field.dart';

class ClassicSignUpSection extends StatelessWidget {
  const ClassicSignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmailTextFormField(controller: TextEditingController()),
        SizedBox(height: 16.h),
        PasswordTextFormField(controller: TextEditingController()),
        SizedBox(height: 26.h),
        const RememberMeRow(),
        SizedBox(height: 24.h),
        ColoredButton(
            btnTitle: 'Sign up',
            onPressed: () {
              Navigator.pushNamed(context, PersonalDataSignUpView.id);
            }),
        SizedBox(height: 31.h),
      ],
    );
  }
}
