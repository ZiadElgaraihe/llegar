import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/selectable_category_tile.dart';

class TopDealsCategoryListView extends StatefulWidget {
  const TopDealsCategoryListView({super.key});

  @override
  State<TopDealsCategoryListView> createState() =>
      _TopDealsCategoryListViewState();
}

class _TopDealsCategoryListViewState extends State<TopDealsCategoryListView> {
  final ValueNotifier<String> _selectedCategory = ValueNotifier<String>('All');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) => SelectableCategoryTile(
          title: _categories[index],
          selectedCategory: _selectedCategory,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
      ),
    );
  }

  final List<String> _categories = <String>[
    'All',
    'Property',
    'Transportation',
    'Play Areas',
    'Clothes',
    'Event Rentals',
    'Electronics',
  ];
}
