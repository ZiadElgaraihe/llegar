import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/search/presentation/view/widgets/list_views/city_list_view.dart';

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
        const CityListView(),
        SizedBox(height: 64.h),
      ],
    );
  }
}
