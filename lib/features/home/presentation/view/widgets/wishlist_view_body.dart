import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/global_app_bar.dart';
import 'package:llegar/features/home/presentation/view/widgets/list_view/wishlist_list_view.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: const Column(
          children: [
            GlobalAppBar(title: 'My Wishlist'),
            Expanded(
              child: WishlistListView(),
            ),
          ],
        ),
      ),
    );
  }
}
