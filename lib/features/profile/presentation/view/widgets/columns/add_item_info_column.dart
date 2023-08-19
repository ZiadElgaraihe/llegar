import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/profile/presentation/view/widgets/text_fields/add_item_data_text_form_field.dart';

class AddItemInfoColumn extends StatelessWidget {
  const AddItemInfoColumn({
    super.key,
    required this.title,
    required this.keyboardType,
  });

  final String title;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 31.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.textStyle24.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.kSecondaryColor,
            ),
          ),
          SizedBox(height: 16.h),
          AddItemDataTextFormField(
            hint: title,
            keyboardType: keyboardType,
            validator: (value, hint) {
              return null;
            },
            onSaved: (newValue) {},
          ),
        ],
      ),
    );
  }
}
