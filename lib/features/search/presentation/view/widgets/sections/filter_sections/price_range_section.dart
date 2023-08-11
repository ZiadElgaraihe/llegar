import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/search/presentation/view/widgets/range_sliders/price_range_slider.dart';

class PriceRangeSection extends StatelessWidget {
  const PriceRangeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price Range',
          style: TextStyles.textStyle20,
        ),
        SizedBox(height: 44.h),
        const PriceRangeSlider(),
        SizedBox(height: 24.h),
      ],
    );
  }
}
