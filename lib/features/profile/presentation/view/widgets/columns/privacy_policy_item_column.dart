import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class PrivacyPolicyItemColumn extends StatelessWidget {
  const PrivacyPolicyItemColumn({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32.h),
        Text(
          title,
          style: TextStyles.textStyle20,
        ),
        SizedBox(height: 26.h),
        Text(
          content,
          style: TextStyles.textStyle14.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
