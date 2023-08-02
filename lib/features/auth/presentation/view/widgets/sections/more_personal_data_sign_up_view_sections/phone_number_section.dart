import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/data_text_form_field.dart';

class PhoneNumberSection extends StatelessWidget {
  const PhoneNumberSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        const DataTextFormField(
          hint: 'Phone Number',
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
