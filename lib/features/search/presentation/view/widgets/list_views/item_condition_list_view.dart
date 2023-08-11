import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/selectable_category_tile.dart';

class ItemConditionListView extends StatefulWidget {
  const ItemConditionListView({super.key});

  @override
  State<ItemConditionListView> createState() => _ItemConditionListViewState();
}

class _ItemConditionListViewState extends State<ItemConditionListView> {
  final ValueNotifier<String> _selectedCondition = ValueNotifier<String>('All');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: _conditions.length,
        itemBuilder: (context, index) => SelectableCategoryTile(
          title: _conditions[index],
          selectedCategory: _selectedCondition,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
      ),
    );
  }

  final List<String> _conditions = <String>[
    'All',
    'New',
    'Used',
  ];
}
