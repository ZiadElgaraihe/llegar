import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/constants.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/type_a_head_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

class GenderAndCitySection extends StatelessWidget {
  const GenderAndCitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 39.57.h),
        TypeAHeadTextFormField(
          hint: 'Gender',
          suggestionList: genders,
          suggestionListHeight: 75.h,
          onSaved: (newValue) {
            context.read<SignUpCubit>().gender = newValue;
          },
        ),
        SizedBox(height: 100.h),
        TypeAHeadTextFormField(
          hint: 'City',
          suggestionList: cities,
          suggestionListHeight: 175.h,
          onSaved: (newValue) {
            context.read<SignUpCubit>().city = newValue;
          },
        ),
        SizedBox(height: 206.h),
      ],
    );
  }
}
