import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/profile/presentation/view/widgets/text_fields/profile_type_a_head_text_form_field.dart';

class AddItemRentTypeSection extends StatelessWidget {
  AddItemRentTypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileTypeAHeadTextFormField(
      hint: 'rent type',
      suggestionList: _rentType,
      suggestionListHeight: 135.h,
      onSaved: (newValue) {},
    );
  }

  final List<String> _rentType = <String>[
    'Transportation',
    'Property',
    'Clothes',
    'Electronics',
    'Play Areas',
    'Event Rentals',
  ];
}
