import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/constants.dart';
import 'package:llegar/features/auth/presentation/view/social_log_in_view.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/splash/presentation/view/widgets/welcome_page_view_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        ValueListenableBuilder(
          valueListenable: _activeIndex,
          builder: (context, value, child) => AnimatedSmoothIndicator(
            activeIndex: value,
            count: welcomePageViewItems.length,
            effect: ExpandingDotsEffect(
              activeDotColor: AppColors.kPrimaryColor,
              dotColor: const Color(0xFFE0E0E0),
              dotWidth: 8.w,
              dotHeight: 8.h,
            ),
          ),
        ),
        SizedBox(height: 24.h),
        ValueListenableBuilder(
          valueListenable: _isLastView,
          builder: (context, value, child) => ColoredButton(
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
