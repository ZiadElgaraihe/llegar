import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/data_text_form_field.dart';

class NameDataSection extends StatelessWidget {
  const NameDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
          const DataTextFormField(
            hint: 'Full Name',
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 16.h),
          const DataTextFormField(
            hint: 'User Name',
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 16.h),
      ],
    );
  }
}