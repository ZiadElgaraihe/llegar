import 'dart:async';
import 'package:flutter/material.dart';
import 'package:llegar/features/home/presentation/view/widgets/page_views/special_offers_page_view.dart';
import 'package:llegar/features/home/presentation/view/widgets/smooth_indicators/special_offers_smooth_indicator.dart';

class SpecialOffersContainerContent extends StatefulWidget {
  const SpecialOffersContainerContent({super.key});

  @override
  State<SpecialOffersContainerContent> createState() =>
      _SpecialOffersContainerContentState();
}

class _SpecialOffersContainerContentState
    extends State<SpecialOffersContainerContent> {
  final PageController _pageController = PageController();
  final ValueNotifier<int> _activeIndex = ValueNotifier<int>(0);
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    //change page automatically
    startAutomaticPageChange();
  }

  @override
  void dispose() {
    //cancel timer
    _timer.cancel();
    //dispose controller
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpecialOffersPageView(
          pageController: _pageController,
          activeIndex: _activeIndex,
        ),
        SpecialOffersSmoothIndicator(activeIndex: _activeIndex),
      ],
    );
  }

  void startAutomaticPageChange() {
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        (_activeIndex.value < 3)
            ? _activeIndex.value++
            : _activeIndex.value = 0;
        _pageController.animateToPage(
          _activeIndex.value,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      },
    );
  }
}
