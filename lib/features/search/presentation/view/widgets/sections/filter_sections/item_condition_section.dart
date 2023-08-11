import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/search/presentation/view/widgets/list_views/item_condition_list_view.dart';

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
        const ItemConditionListView(),
        SizedBox(height: 24.h),
      ],
    );
  }
}
