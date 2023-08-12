import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/core/widgets/selectable_category_list_view.dart';
import 'package:llegar/features/home/presentation/view/widgets/list_view/top_deals_list_view.dart';

class TopDealsViewBody extends StatelessWidget {
  const TopDealsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 40.h, right: 24.w, left: 24.w),
        child: Column(
          children: [
            const GlobalAppBar(title: 'Top Deals'),
            SizedBox(height: 40.h),
            const SelectableCategoryListView(
              items: <String>[
                'All',
                'Property',
                'Transportation',
                'Play Areas',
                'Clothes',
                'Event Rentals',
                'Electronics',
              ],
            ),
            SizedBox(height: 32.h),
            const Expanded(
              child: TopDealsListView(
                shrinkWrap: false,
                physics: BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
