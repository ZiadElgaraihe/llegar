import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/features/home/presentation/view/widgets/buttons/special_offers_category_item_button.dart';

class SpecialOffersCategoryGridView extends StatefulWidget {
  const SpecialOffersCategoryGridView({super.key});

  @override
  State<SpecialOffersCategoryGridView> createState() =>
      _SpecialOffersCategoryGridViewState();
}

class _SpecialOffersCategoryGridViewState
    extends State<SpecialOffersCategoryGridView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppConfig.sizeData.width >= 600 ? 315.h : 260.h,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: AppConfig.sizeData.width >= 600 ? 24.w : 12.w,
          crossAxisCount: 3,
        ),
        itemCount: 6,
        itemBuilder: (context, index) => SpecialOffersCategoryItemButton(
          image: _categories[index]['image']!,
          title: _categories[index]['title']!,
        ),
      ),
    );
  }

  final List<Map<String, String>> _categories = <Map<String, String>>[
    {
      'image': AppImages.imagesHouse,
      'title': 'Property',
    },
    {
      'image': AppImages.imagesCar,
      'title': 'Transportation',
    },
    {
      'image': AppImages.imagesPlaygroundArea,
      'title': 'Play Areas',
    },
    {
      'image': AppImages.imagesClothes,
      'title': 'Clothes',
    },
    {
      'image': AppImages.imagesParty,
      'title': 'Event Rentals',
    },
    {
      'image': AppImages.imagesElectronic,
      'title': 'Electronics',
    },
  ];
}
