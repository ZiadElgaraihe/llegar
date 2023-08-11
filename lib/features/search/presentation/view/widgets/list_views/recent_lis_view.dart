import 'package:flutter/material.dart';
import 'package:llegar/features/search/presentation/view/widgets/rows/recent_item_row.dart';

class RecentListView extends StatelessWidget {
  const RecentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) => const RecentItemRow(),
      ),
    );
  }
}
