import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/rent_item.dart';

class WishlistListView extends StatelessWidget {
  const WishlistListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) => const RentItem(),
            separatorBuilder: (context, index) => SizedBox(height: 32.h),
          ),
        ),
        SizedBox(height: 50.h),
      ],
    );
  }
}
