import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/rent_item_title_and_rate_row.dart';
import 'package:llegar/core/widgets/rent_item_image.dart';
import 'package:llegar/core/widgets/rent_item_details_text.dart';

class RentItem extends StatelessWidget {
  const RentItem({super.key, required this.canAddToFavourite});

  final bool canAddToFavourite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RentItemImage(canAddToFavourite: canAddToFavourite),
          SizedBox(height: 24.h),
          const RentItemTitleAndRateRow(),
          SizedBox(height: 12.h),
          const RentItemDetailsText(),
          SizedBox(height: 10.h),
          Text(
            '\$230 /day',
            style: TextStyles.textStyle20,
          ),
        ],
      ),
    );
  }
}
