import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ListenableSmoothIndicator extends StatelessWidget {
  const ListenableSmoothIndicator({
    super.key,
    required ValueNotifier<int> activeIndex, required this.length,
  }) : _activeIndex = activeIndex;

  final ValueNotifier<int> _activeIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _activeIndex,
      builder: (context, value, child) => AnimatedSmoothIndicator(
        activeIndex: value,
        count: length,
        effect: ExpandingDotsEffect(
          activeDotColor: AppColors.kPrimaryColor,
          dotColor: const Color(0xFFE0E0E0),
          dotWidth: 8.w,
          dotHeight: 8.h,
        ),
      ),
    );
  }
}
