import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/selectable_category_list_view.dart';

class ItemTypeSection extends StatelessWidget {
  ItemTypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Item Type',
          style: TextStyles.textStyle20,
        ),
        SizedBox(height: 24.h),
        SelectableCategoryListView(
          items: _itemTypes,
        ),
        SizedBox(height: 24.h),
      ],
    );
  }

  final List<String> _itemTypes = <String>[
    'All',
    'Property',
    'Transportation',
    'Play Areas',
    'Clothes',
    'Event Rentals',
    'Electronics',
  ];
}
