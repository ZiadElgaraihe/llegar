import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/profile/presentation/view/widgets/text_fields/add_item_condition_text_field.dart';

class AddItemConditionColumn extends StatelessWidget {
  const AddItemConditionColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AddItemConditionTextFormField(),
        Text(
          'Not required*',
          style: TextStyles.textStyle20.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.kGreen,
          ),
        ),
      ],
    );
  }
}
