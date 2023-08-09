import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/home/presentation/view/widgets/buttons/top_deals_category_item.dart';

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
        itemCount: 7,
        itemBuilder: (context, index) => TopDealsCategoryItem(
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
