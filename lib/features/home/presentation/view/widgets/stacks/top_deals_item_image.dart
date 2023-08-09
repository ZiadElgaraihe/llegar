import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/features/home/presentation/view/widgets/buttons/favourite_item.dart';

class TopDealsItemImage extends StatelessWidget {
  const TopDealsItemImage({super.key});

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
        Positioned(
          top: 32.h,
          right: 32.w,
          child: const FavouriteItem(),
        ),
      ],
    );
  }
}
