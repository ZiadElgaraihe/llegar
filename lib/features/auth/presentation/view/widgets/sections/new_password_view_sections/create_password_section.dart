import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/new_password_text_form_field.dart';

class CreatePasswordSection extends StatelessWidget {
  const CreatePasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 34.h),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 16.w),
          child: Text(
            'Create a new password',
            style: TextStyles.textStyle16,
          ),
        ),
        SizedBox(height: 16.h),
        const NewPasswordTextFormField(hint: 'New Password'),
        SizedBox(height: 16.h),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 16.w),
          child: Text(
            'Confirm a new password',
            style: TextStyles.textStyle16,
          ),
        ),
        SizedBox(height: 16.h),
        const NewPasswordTextFormField(hint: 'Confirm Password'),
        SizedBox(height: 32.h),
      ],
    );
  }
}
