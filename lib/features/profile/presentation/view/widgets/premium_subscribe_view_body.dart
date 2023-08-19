import 'package:flutter/material.dart';
import 'package:llegar/features/profile/presentation/view/widgets/app_bars/premium_subscribe_app_bar.dart';
import 'package:llegar/features/profile/presentation/view/widgets/list_view/premium_subscribe_list_view.dart';

class PremiumSubscribeViewBody extends StatelessWidget {
  const PremiumSubscribeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          PremiumSubscribeAppBar(),
          Expanded(
            child: PremiumSubscribeListView(),
          ),
        ],
      ),
    );
  }
}
