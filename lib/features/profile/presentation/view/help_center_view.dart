import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/help_center_view_body.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});

  static const String id = '/HelpCenterView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HelpCenterViewBody(),
    );
  }
}
