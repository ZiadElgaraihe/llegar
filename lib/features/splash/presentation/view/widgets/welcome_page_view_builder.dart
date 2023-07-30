import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/constants.dart';
import 'package:llegar/features/splash/presentation/view/widgets/welcome_page_view_item.dart';

class WelcomePageViewBuilder extends StatelessWidget {
  const WelcomePageViewBuilder({
    super.key,
    required this.pageController,
    required this.isLastView,
    required this.activeIndex,
  });

  final ValueNotifier<int> activeIndex;
  final ValueNotifier<bool> isLastView;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 575.h,
      width: double.infinity,
      child: PageView.builder(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (value) {
          if (value == welcomePageViewItems.length - 1) {
            isLastView.value = true;
          } else if (activeIndex.value ==
                  welcomePageViewItems.length - 1 &&
              value == welcomePageViewItems.length - 2) {
            isLastView.value = false;
          }
          activeIndex.value = value;
        },
        itemCount: welcomePageViewItems.length,
        itemBuilder: (context, index) => WelcomePageViewItem(
            image: welcomePageViewItems[index]['img']!,
            title: welcomePageViewItems[index]['title']!,
            content: welcomePageViewItems[index]['content']!),
      ),
    );
  }
}
