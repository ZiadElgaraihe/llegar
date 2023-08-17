import 'package:flutter/material.dart';
import 'package:llegar/core/functions/future_delayed_navigator.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/home/presentation/view/top_deals_view.dart';

class TopDealsSectionTitleRow extends StatelessWidget {
  const TopDealsSectionTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Top Deals',
          style: TextStyles.textStyle20,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            futureDelayedNavigator(
              () {
                Navigator.pushNamed(context, TopDealsView.id);
              },
            );
          },
          child: Text(
            'See All',
            style: TextStyles.textStyle14.copyWith(
              color: AppColors.kSecondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
