import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/search/presentation/view/widgets/list_views/recent_list_view.dart';
import 'package:llegar/features/search/presentation/view/widgets/rows/recent_search_body_title.dart';

class RecentSearchBody extends StatelessWidget {
  const RecentSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const RecentSearchBodyTitle(),
          SizedBox(height: 16.h),
          Divider(
            thickness: 1.h,
            color: AppColors.kDarkGrey,
          ),
          SizedBox(height: 16.h),
          const RecentListView(),
        ],
      ),
    );
  }
}
