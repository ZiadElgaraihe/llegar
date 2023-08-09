import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpecialOffersSmoothIndicator extends StatelessWidget {
  const SpecialOffersSmoothIndicator({
    super.key,
    required ValueNotifier<int> activeIndex,
  }) : _activeIndex = activeIndex;

  final ValueNotifier<int> _activeIndex;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _activeIndex,
      builder: (context, activeIndex, child) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 4,
        effect: ExpandingDotsEffect(
          activeDotColor: AppColors.kPrimaryColor,
          dotColor: const Color.fromRGBO(30, 30, 30, 0.62),
          dotWidth: 3.w,
          dotHeight: 3.h,
        ),
      ),
    );
  }
}
