import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/my_acticivities_view_body.dart';

class MyActivitiesView extends StatelessWidget {
  const MyActivitiesView({super.key});

  static const String id = '/MyActivitiesView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyActivitiesViewBody(),
    );
  }
}
