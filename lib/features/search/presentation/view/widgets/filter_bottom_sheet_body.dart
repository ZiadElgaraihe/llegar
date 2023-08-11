import 'package:flutter/material.dart';
import 'package:llegar/features/search/presentation/view/widgets/columns/drag_handle_and_title.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/filter_sections/buttons_section.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/filter_sections/city_section.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/filter_sections/item_condition_section.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/filter_sections/item_type_section.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/filter_sections/price_range_section.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/filter_sections/rating_section.dart';

class FilterBottomSheetBody extends StatelessWidget {
  const FilterBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DragHandleAndTitle(),
        ItemTypeSection(),
        ItemConditionSection(),
        PriceRangeSection(),
        RatingSection(),
        CitySection(),
        ButtonsSection()
      ],
    );
  }
}
