import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/activities_items_view_body.dart';

class ActivitiesItemsView extends StatelessWidget {
  const ActivitiesItemsView({super.key, required this.appBarTitle});

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActivitiesItemsViewBody(appBarTitle: appBarTitle),
    );
  }
}
