import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/text_fields/profile_type_a_head_text_form_field.dart';

class AddItemCitySection extends StatelessWidget {
  AddItemCitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileTypeAHeadTextFormField(
      hint: 'City',
      suggestionList: _cities,
      suggestionListHeight: 135.h,
      onSaved: (newValue) {},
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
}
