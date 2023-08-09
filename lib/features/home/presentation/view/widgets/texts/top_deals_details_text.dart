import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class TopDealsDetailsText extends StatelessWidget {
  const TopDealsDetailsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 305.w,
      child: Text(
        'This spacious BMW is perfect for long drives and local errands.',
        style: TextStyles.textStyle16.copyWith(
          color: AppColors.kSecondaryColor,
          letterSpacing: 0.2.sp,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
