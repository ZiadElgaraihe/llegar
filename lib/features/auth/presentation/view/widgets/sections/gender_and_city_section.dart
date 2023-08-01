import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/constants.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/type_a_head_text_field.dart';

class GenderAndCitySection extends StatelessWidget {
  const GenderAndCitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 39.57.h),
        TypeAHeadTextField(
          hint: 'Gender',
          suggestionList: genders,
          suggestionListHeight: 75.h,
        ),
        SizedBox(height: 100.h),
        TypeAHeadTextField(
          hint: 'City',
          suggestionList: cities,
          suggestionListHeight: 175.h,
        ),
        SizedBox(height: 206.h),
        ColoredButton(btnTitle: 'Continue', onPressed: () {}),
      ],
    );
  }
}
