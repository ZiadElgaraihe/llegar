import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/home/presentation/view/widgets/rows/title_and_rate_row.dart';
import 'package:llegar/features/home/presentation/view/widgets/stacks/top_deals_item_image.dart';
import 'package:llegar/features/home/presentation/view/widgets/texts/top_deals_details_text.dart';

class TopDealsItem extends StatelessWidget {
  const TopDealsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopDealsItemImage(),
          SizedBox(height: 24.h),
          const TopDealsTitleAndRateRow(),
          SizedBox(height: 12.h),
          const TopDealsDetailsText(),
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
