import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/splash/presentation/view/widgets/app_bars/welcome_view_app_bar.dart';
import 'package:llegar/features/splash/presentation/view/widgets/welcome_page_view_section.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.h),
          const WelcomeViewAppBar(),
          SizedBox(height: 104.h),
          const WelcomePageViewSection(),
        ],
      ),
    );
  }
}
