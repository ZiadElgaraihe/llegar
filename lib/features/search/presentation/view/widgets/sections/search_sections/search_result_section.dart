import 'package:flutter/material.dart';
import 'package:llegar/core/widgets/items_list_view.dart';

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: ItemsListView(
        shrinkWrap: false,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
