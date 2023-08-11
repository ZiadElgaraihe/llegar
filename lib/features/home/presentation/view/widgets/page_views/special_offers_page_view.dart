import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/home/presentation/view/widgets/rows/special_offer_page_view_item.dart';

class SpecialOffersPageView extends StatelessWidget {
  const SpecialOffersPageView({
    super.key,
    required PageController pageController,
    required ValueNotifier<int> activeIndex,
  })  : _pageController = pageController,
        _activeIndex = activeIndex;

  final PageController _pageController;
  final ValueNotifier<int> _activeIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 139.h,
      child: PageView.builder(
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (value) {
          _activeIndex.value = value;
        },
        itemCount: 4,
        itemBuilder: (context, index) => const SpecialOfferPageViewItem(),
      ),
    );
  }
}
