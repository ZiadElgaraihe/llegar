import 'dart:async';
import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/home/presentation/view/widgets/rows/special_offer_page_view_item.dart';
import 'package:llegar/features/home/presentation/view/widgets/smooth_indicators/special_offers_smooth_indicator.dart';

class SpecialOffersPageView extends StatefulWidget {
  const SpecialOffersPageView({super.key});

  @override
  State<SpecialOffersPageView> createState() => _SpecialOffersPageViewState();
}

class _SpecialOffersPageViewState extends State<SpecialOffersPageView> {
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
        SizedBox(
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
