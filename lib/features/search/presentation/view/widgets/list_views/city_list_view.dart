import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/selectable_category_tile.dart';

class CityListView extends StatefulWidget {
  const CityListView({super.key});

  @override
  State<CityListView> createState() => _CityListViewState();
}

class _CityListViewState extends State<CityListView> {
  final ValueNotifier<String> _selectedType = ValueNotifier<String>('All');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: _cities.length,
        itemBuilder: (context, index) => SelectableCategoryTile(
          title: _cities[index],
          selectedCategory: _selectedType,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
      ),
    );
  }

  final List<String> _cities = <String>[
    'All',
    'Alexandria',
    'Aswan',
    'Asyut',
    'Beheira',
    'Beni Suef',
    'Cairo',
    'Damietta',
    'Dakahlia',
    'Faiyum',
    'Gharbia',
    'Giza',
    'Ismailia',
    'Kafr El Sheikh',
    'Luxor',
    'Matrouh',
    'Minya',
    'Monufia',
    'New Valley',
    'North Sinai',
    'Port Said',
    'Qalyubia',
    'Qena',
    'Red Sea',
    'Sharqia',
    'Sohag',
    'South Sinai',
    'Suez',
  ];
}
