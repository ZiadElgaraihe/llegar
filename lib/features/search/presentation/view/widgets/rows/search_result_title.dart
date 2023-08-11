import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class SearchResultTitle extends StatelessWidget {
  const SearchResultTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 235.w,
          child: RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: TextStyles.textStyle20.copyWith(
                color: AppColors.kPrimaryColor,
              ),
              children: [
                const TextSpan(text: 'Results for '),
                TextSpan(
                  text: '“sdlkfjs;ldkfjs”',
                  style: TextStyles.textStyle20.copyWith(
                    color: AppColors.kSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        Text(
          '0 found',
          style: TextStyles.textStyle14.copyWith(
            color: AppColors.kSecondaryColor,
          ),
        ),
      ],
    );
  }
}
