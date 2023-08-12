import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/selectable_category_list_view.dart';

class ItemConditionSection extends StatelessWidget {
  const ItemConditionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Item Condition',
          style: TextStyles.textStyle20,
        ),
        SizedBox(height: 24.h),
        const SelectableCategoryListView(
          items: <String>[
            'All',
            'New',
            'Used',
          ],
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
