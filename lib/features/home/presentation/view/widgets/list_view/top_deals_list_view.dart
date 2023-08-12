import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/rent_item.dart';

class TopDealsListView extends StatelessWidget {
  const TopDealsListView({
    super.key,
    required this.shrinkWrap,
    required this.physics,
  });

  final bool shrinkWrap;
  final ScrollPhysics physics;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: shrinkWrap,
      padding: EdgeInsets.only(bottom: 40.h),
      physics: physics,
      itemCount: 4,
      itemBuilder: (context, index) => const RentItem(),
      separatorBuilder: (context, index) => SizedBox(height: 40.h),
    );
  }
}
