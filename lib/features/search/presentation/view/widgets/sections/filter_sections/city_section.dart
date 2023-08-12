import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/selectable_category_list_view.dart';

class CitySection extends StatelessWidget {
  const CitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'City',
          style: TextStyles.textStyle20,
        ),
        SizedBox(height: 24.h),
        const SelectableCategoryListView(
          items: <String>[
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
          ],
        ),
        SizedBox(height: 64.h),
      ],
    );
  }
}
