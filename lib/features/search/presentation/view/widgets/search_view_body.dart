import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/search_sections/recent_search_body.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/search_sections/search_section.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: const Column(
        children: [
          Hero(
            tag: 'Search',
            child: SearchSection(),
          ),
          RecentSearchBody(),
        ],
      ),
    );
  }
}
