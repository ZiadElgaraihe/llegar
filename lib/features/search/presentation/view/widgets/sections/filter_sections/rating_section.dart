import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/search/presentation/view/widgets/list_views/rating_list_view.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key});

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
        const RatingListView(),
        SizedBox(height: 24.h),
      ],
    );
  }
}
