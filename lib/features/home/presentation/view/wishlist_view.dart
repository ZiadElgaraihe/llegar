import 'package:flutter/material.dart';
import 'package:llegar/features/home/presentation/view/widgets/wishlist_view_body.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  static const String id = '/WishlistView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WishlistViewBody(),
    );
  }
}
