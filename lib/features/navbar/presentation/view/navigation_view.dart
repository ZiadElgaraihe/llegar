import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/features/home/presentation/view/home_view.dart';
import 'package:llegar/features/navbar/presentation/view/widgets/navigation_view_body.dart';
import 'package:llegar/features/navbar/presentation/view/widgets/navigation_view_nav_bar.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  static const String id = '/NavBar';

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigationViewBody(
        pageController: _pageController,
        views: _views,
        currentIndex: _currentIndex,
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _currentIndex,
        builder: (context, value, child) => NavigationViewNavBar(
          currentIndex: _currentIndex,
          navigationBarItems: _navigationBarItems,
          onTap: animateToPage,
        ),
      ),
    );
  }

  //change the page with animation
  void animateToPage(pageIndex) {
    _pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  final List<Widget> _views = [
    const HomeView(),
    const SafeArea(
      child: Text('Orders'),
    ),
    const SafeArea(
      child: Text('Inbox'),
    ),
    const SafeArea(
      child: Text('Wallet'),
    ),
    const SafeArea(
      child: Text('Profile'),
    ),
  ];

  final List<Map<String, String>> _navigationBarItems = [
    {
      'label': 'Home',
      'activeIcon': AppIcons.iconsHomeActive,
      'inactiveIcon': AppIcons.iconsHomeInactive,
    },
    {
      'label': 'Orders',
      'activeIcon': AppIcons.iconsCartActive,
      'inactiveIcon': AppIcons.iconsCartInactive,
    },
    {
      'label': 'Inbox',
      'activeIcon': AppIcons.iconsChatActive,
      'inactiveIcon': AppIcons.iconsChatInactive,
    },
    {
      'label': 'Wallet',
      'activeIcon': AppIcons.iconsWalletActive,
      'inactiveIcon': AppIcons.iconsWalletInactive,
    },
    {
      'label': 'Profile',
      'activeIcon': AppIcons.iconsPersonActive,
      'inactiveIcon': AppIcons.iconsPersonInactive,
    },
  ];
}
