import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/search/presentation/view/widgets/sections/search_sections/search_result_section.dart';
import 'package:llegar/features/search/presentation/view/widgets/rows/search_result_title.dart';

class SearchSuccessBody extends StatelessWidget {
  const SearchSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SearchResultTitle(),
          SizedBox(height: 40.h),
          const SearchResultSection(),
        ],
      ),
    );
  }
}
