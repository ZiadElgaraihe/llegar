import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/selectable_category_tile.dart';

class ItemTypeListView extends StatefulWidget {
  const ItemTypeListView({super.key});

  @override
  State<ItemTypeListView> createState() => _ItemTypeListViewState();
}

class _ItemTypeListViewState extends State<ItemTypeListView> {
  final ValueNotifier<String> _selectedType = ValueNotifier<String>('All');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: _types.length,
        itemBuilder: (context, index) => SelectableCategoryTile(
          title: _types[index],
          selectedCategory: _selectedType,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
      ),
    );
  }

  final List<String> _types = <String>[
    'All',
    'Property',
    'Transportation',
    'Play Areas',
    'Clothes',
    'Event Rentals',
    'Electronics',
  ];
}
