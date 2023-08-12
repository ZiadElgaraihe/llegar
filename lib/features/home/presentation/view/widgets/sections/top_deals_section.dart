import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/selectable_category_list_view.dart';
import 'package:llegar/features/home/presentation/view/widgets/list_view/top_deals_list_view.dart';
import 'package:llegar/features/home/presentation/view/widgets/rows/top_deals_section_title_row.dart';

class TopDealsSection extends StatelessWidget {
  const TopDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopDealsSectionTitleRow(),
        SizedBox(height: 24.h),
        const SelectableCategoryListView(
          items: <String>[
            'All',
            'Property',
            'Transportation',
            'Play Areas',
            'Clothes',
            'Event Rentals',
            'Electronics',
          ],
        ),
        SizedBox(height: 32.h),
        const TopDealsListView(),
      ],
    );
  }
}
