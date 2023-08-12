import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/home/presentation/view/special_offers_view.dart';

class SpecialOffersSectionTitleRow extends StatelessWidget {
  const SpecialOffersSectionTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Special Offers',
          style: TextStyles.textStyle20,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, SpecialOffersView.id);
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
