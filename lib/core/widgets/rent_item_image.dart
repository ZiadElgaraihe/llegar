import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/features/home/presentation/view/widgets/buttons/favourite_item_button.dart';

class RentItemImage extends StatelessWidget {
  const RentItemImage({super.key, required this.canAddToFavourite});

  final bool canAddToFavourite;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 307.h,
          width: 382.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.w),
            color: AppColors.kLightGrey,
          ),
          child: Image.asset(
            AppImages.imagesBMWCarPng,
            height: 307.h,
            width: 382.w,
            fit: BoxFit.fill,
          ),
        ),
        if (canAddToFavourite)
          Positioned(
            top: 32.h,
            right: 32.w,
            child: const FavouriteItemButton(),
          ),
      ],
    );
  }
}
