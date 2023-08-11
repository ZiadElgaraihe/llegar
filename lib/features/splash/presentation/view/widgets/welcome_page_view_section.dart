import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/social_log_in_view.dart';
import 'package:llegar/core/widgets/default_button.dart';
import 'package:llegar/features/splash/presentation/view/widgets/listenable_smooth_indicator.dart';
import 'package:llegar/features/splash/presentation/view/widgets/welcome_page_view_builder.dart';

class WelcomePageViewSection extends StatefulWidget {
  const WelcomePageViewSection({super.key});

  @override
  State<WelcomePageViewSection> createState() => _WelcomePageViewSectionState();
}

class _WelcomePageViewSectionState extends State<WelcomePageViewSection> {
  final ValueNotifier<int> _activeIndex = ValueNotifier<int>(0);
  final ValueNotifier<bool> _isLastView = ValueNotifier<bool>(false);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WelcomePageViewBuilder(
          pageController: _pageController,
          isLastView: _isLastView,
          activeIndex: _activeIndex,
        ),
        SizedBox(height: 24.h),
        ListenableSmoothIndicator(activeIndex: _activeIndex),
        SizedBox(height: 24.h),
        ValueListenableBuilder(
          valueListenable: _isLastView,
          builder: (context, value, child) => DefaultButton(
            btnTitle: value ? 'Get Started' : 'Next',
            onPressed: () {
              if (value) {
                Navigator.pushReplacementNamed(context, SocialLogInView.id);
              } else {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 550),
                    curve: Curves.fastLinearToSlowEaseIn);
              }
            },
          ),
        )
      ],
    );
  }
}
