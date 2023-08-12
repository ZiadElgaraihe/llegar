import 'package:flutter/material.dart';
import 'package:llegar/features/home/presentation/view/widgets/top_deals_view_body.dart';

class TopDealsView extends StatelessWidget {
  const TopDealsView({super.key});

  static const String id = '/TopDealsView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TopDealsViewBody(),
    );
  }
}
