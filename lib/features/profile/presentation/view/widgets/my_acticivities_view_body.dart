import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/sections/my_activities_section.dart';

class MyActivitiesViewBody extends StatelessWidget {
  const MyActivitiesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: const Column(
          children: [
            GlobalAppBar(title: 'My Activities'),
            MyActivitiesSection(),
          ],
        ),
      ),
    );
  }
}
