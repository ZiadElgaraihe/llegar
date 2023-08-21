import 'package:flutter/material.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';

class HelpCenterViewBody extends StatelessWidget {
  const HelpCenterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          GlobalAppBar(
            title: 'Help Center',
            initSuffixIcon: true,
          ),
        ],
      ),
    );
  }
}
