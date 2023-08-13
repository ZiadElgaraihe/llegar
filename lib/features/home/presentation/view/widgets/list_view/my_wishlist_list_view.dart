import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/items_list_view.dart';

class MyWishlistListView extends StatelessWidget {
  const MyWishlistListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        const Expanded(
          child: ItemsListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
