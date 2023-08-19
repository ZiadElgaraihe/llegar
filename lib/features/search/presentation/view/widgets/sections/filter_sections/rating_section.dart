import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/selectable_category_list_view.dart';

class RatingSection extends StatelessWidget {
  RatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rating',
          style: TextStyles.textStyle20,
        ),
        SizedBox(height: 24.h),
        SelectableCategoryListView(
          icon: AppIcons.iconsStar,
          items: _ratings,
        ),
        SizedBox(height: 24.h),
      ],
    );
  }

  final List<String> _ratings = <String>[
    'All',
    '5',
    '4',
    '3',
    '2',
    '1',
  ];
}
