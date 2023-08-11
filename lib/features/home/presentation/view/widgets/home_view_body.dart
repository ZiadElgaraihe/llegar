import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/home/presentation/view/widgets/app_bars/home_app_bar.dart';
import 'package:llegar/features/home/presentation/view/widgets/sections/home_search_section.dart';
import 'package:llegar/features/home/presentation/view/widgets/sections/special_offers_section.dart';
import 'package:llegar/features/home/presentation/view/widgets/sections/top_deals_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: const Column(
          children: [
            HomeAppBar(),
            Hero(
              tag: 'Search',
              child: HomeSearchSection(),
            ),
            SpecialOffersSection(),
            TopDealsSection(),
          ],
        ),
      ),
    );
  }
}
