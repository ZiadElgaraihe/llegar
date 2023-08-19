import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/premium_subscribe_view_body.dart';

class PremiumSubscribeView extends StatelessWidget {
  const PremiumSubscribeView({super.key});

  static const String id = '/PremiumSubscribeView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PremiumSubscribeViewBody(),
    );
  }
}
