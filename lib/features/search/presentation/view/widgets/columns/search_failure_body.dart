import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/search/presentation/view/widgets/rows/search_result_title.dart';

class SearchFailureBody extends StatelessWidget {
  const SearchFailureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchResultTitle(),
        SizedBox(height: 96.h),
        SvgPicture.asset(
          AppImages.imagesNotFound,
          height: 254.h,
          width: 382.w,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 32.h),
        Text(
          'Not Found',
          style: TextStyles.textStyle20,
        ),
        SizedBox(height: 32.h),
        SizedBox(
          width: 305.w,
          child: Text(
            'Sorry, the Keyword you entered cannot be found, please check again or search with another keyword.',
            style: TextStyles.textStyle16.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.kSecondaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
