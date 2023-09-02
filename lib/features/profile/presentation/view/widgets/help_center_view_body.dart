import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/tabs/help_center_tab_controller.dart';

class HelpCenterViewBody extends StatelessWidget {
  const HelpCenterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 23.w, right: 17.w, bottom: 48.h),
            child: const GlobalAppBar(
              title: 'Help Center',
              initSuffixIcon: true,
            ),
          ),
          const HelpCenterTabController(),
        ],
      ),
    );
  }
}
