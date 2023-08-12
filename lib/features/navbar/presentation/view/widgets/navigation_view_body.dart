import 'package:flutter/material.dart';

class NavigationViewBody extends StatelessWidget {
  const NavigationViewBody({
    super.key,
    required PageController pageController,
    required List<Widget> views,
    required ValueNotifier<int> currentIndex,
  })  : _pageController = pageController,
        _views = views,
        _currentIndex = currentIndex;

  final PageController _pageController;
  final List<Widget> _views;
  final ValueNotifier<int> _currentIndex;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const BouncingScrollPhysics(),
      children: _views,
      onPageChanged: (index) {
        _currentIndex.value = index;
      },
    );
  }
}
