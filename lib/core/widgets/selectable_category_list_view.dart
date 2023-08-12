import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/selectable_category_tile.dart';

class SelectableCategoryListView extends StatefulWidget {
  const SelectableCategoryListView({
    super.key,
    this.icon,
    required this.items,
  });

  final String? icon;
  final List<String> items;

  @override
  State<SelectableCategoryListView> createState() =>
      _SelectableCategoryListViewState();
}

class _SelectableCategoryListViewState
    extends State<SelectableCategoryListView> {
  final ValueNotifier<String> _selectedType = ValueNotifier<String>('All');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.items.length,
        itemBuilder: (context, index) => SelectableCategoryTile(
          title: widget.items[index],
          selectedCategory: _selectedType,
          icon: widget.icon,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
      ),
    );
  }
}
