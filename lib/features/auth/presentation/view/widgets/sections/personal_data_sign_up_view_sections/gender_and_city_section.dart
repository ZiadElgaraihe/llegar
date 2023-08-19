import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/auth_type_a_head_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

class GenderAndCitySection extends StatefulWidget {
  const GenderAndCitySection({super.key});

  @override
  State<GenderAndCitySection> createState() => _GenderAndCitySectionState();
}

class _GenderAndCitySectionState extends State<GenderAndCitySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 39.57.h),
        AuthTypeAHeadTextFormField(
          hint: 'Gender',
          suggestionList: _genders,
          suggestionListHeight: 75.h,
          onSaved: (newValue) {
            context.read<SignUpCubit>().gender = newValue;
          },
        ),
        SizedBox(height: 100.h),
        AuthTypeAHeadTextFormField(
          hint: 'City',
          suggestionList: _cities,
          suggestionListHeight: 175.h,
          onSaved: (newValue) {
            context.read<SignUpCubit>().city = newValue;
          },
        ),
        SizedBox(height: 206.h),
      ],
    );
  }

  final List<String> _cities = <String>[
    'Alexandria',
    'Aswan',
    'Asyut',
    'Beheira',
    'Beni Suef',
    'Cairo',
    'Damietta',
    'Dakahlia',
    'Faiyum',
    'Gharbia',
    'Giza',
    'Ismailia',
    'Kafr El Sheikh',
    'Luxor',
    'Matrouh',
    'Minya',
    'Monufia',
    'New Valley',
    'North Sinai',
    'Port Said',
    'Qalyubia',
    'Qena',
    'Red Sea',
    'Sharqia',
    'Sohag',
    'South Sinai',
    'Suez',
  ];

  final List<String> _genders = <String>[
    'Male',
    'Female',
  ];
}
