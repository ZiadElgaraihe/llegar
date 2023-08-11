import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/widgets/selectable_category_tile.dart';

class RatingListView extends StatefulWidget {
  const RatingListView({super.key});

  @override
  State<RatingListView> createState() => _RatingListViewState();
}

class _RatingListViewState extends State<RatingListView> {
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
          icon: _conditions[index] != 'All' ? AppIcons.iconsStar : null,
          selectedCategory: _selectedCondition,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
      ),
    );
  }

  final List<String> _conditions = <String>[
    'All',
    '5',
    '4',
    '3',
    '2',
    '1',
  ];
}
