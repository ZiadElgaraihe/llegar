import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/home/presentation/view/widgets/buttons/top_deals_item.dart';
import 'package:llegar/features/home/presentation/view/widgets/list_view/top_deals_category_list_view.dart';
import 'package:llegar/features/home/presentation/view/widgets/rows/top_deals_section_title_row.dart';

class TopDealsSection extends StatelessWidget {
  const TopDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopDealsSectionTitleRow(),
        SizedBox(height: 24.h),
        const TopDealsCategoryListView(),
        SizedBox(height: 32.h),
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 40.h),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) => const TopDealsItem(),
          separatorBuilder: (context, index) => SizedBox(height: 40.h),
        ),
      ],
    );
  }
}
