import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/list_view/activities_items_lis_view.dart';

class ActivitiesItemsViewBody extends StatelessWidget {
  const ActivitiesItemsViewBody({super.key, required this.appBarTitle});

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            GlobalAppBar(title: appBarTitle),
            const Expanded(
              child: ActivitiesItemsListView(),
            ),
          ],
        ),
      ),
    );
  }
}
