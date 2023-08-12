import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class NavigationViewNavBar extends StatelessWidget {
  const NavigationViewNavBar({
    super.key,
    required this.currentIndex,
    required this.navigationBarItems,
    required this.onTap,
  });

  final ValueNotifier<int> currentIndex;
  final List<Map<String, String>> navigationBarItems;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.kBackgroundColor,
      elevation: 0,
      currentIndex: currentIndex.value,
      onTap: (value) {
        currentIndex.value = value;
        onTap(value);
      },
      showSelectedLabels: true,
      selectedLabelStyle: TextStyles.textStyle13,
      selectedItemColor: AppColors.kPrimaryColor,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyles.textStyle13,
      unselectedItemColor: AppColors.kPrimaryColor,
      items: List.generate(
        navigationBarItems.length,
        (index) => BottomNavigationBarItem(
          label: navigationBarItems[index]['label'],
          activeIcon: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: SvgPicture.asset(
              navigationBarItems[index]['activeIcon']!,
              height: 28.h,
              width: 28.w,
              fit: BoxFit.fill,
            ),
          ),
          icon: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: SvgPicture.asset(
              navigationBarItems[index]['inactiveIcon']!,
              height: 28.h,
              width: 28.w,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
