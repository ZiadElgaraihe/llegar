import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/widgets/rent_item.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({
    super.key,
    required this.shrinkWrap,
    required this.physics,
    this.canAddToFavourite = true,
  });

  final bool shrinkWrap;
  final ScrollPhysics physics;
  final bool canAddToFavourite;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: shrinkWrap,
      padding: EdgeInsets.only(bottom: 40.h),
      physics: physics,
      itemCount: 4,
      itemBuilder: (context, index) => RentItem(
        canAddToFavourite: canAddToFavourite,
      ),
      separatorBuilder: (context, index) => SizedBox(height: 40.h),
    );
  }
}
