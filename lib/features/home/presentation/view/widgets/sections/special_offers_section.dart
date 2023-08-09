import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/home/presentation/view/widgets/grid_view/special_offers_category_grid_view.dart';
import 'package:llegar/features/home/presentation/view/widgets/containers/special_offers_container.dart';
import 'package:llegar/features/home/presentation/view/widgets/rows/special_offers_section_title_row.dart';

class SpecialOffersSection extends StatelessWidget {
  const SpecialOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SpecialOffersSectionTitleRow(),
        SizedBox(height: 43.h),
        const SpecialOffersContainer(),
        SizedBox(height: 40.h),
        const SpecialOffersCategoryGridView(),
      ],
    );
  }
}
