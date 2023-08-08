import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/text_styles.dart';

class ListenableRichText extends StatelessWidget {
  const ListenableRichText({
    super.key,
    required ValueNotifier<int> seconds,
  }) : _seconds = seconds;

  final ValueNotifier<int> _seconds;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _seconds,
      builder: (context, seconds, child) => RichText(
        text: TextSpan(
          style: TextStyles.textStyle20.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.kSecondaryColor,
          ),
          children: [
            const TextSpan(text: 'You can resend code in '),
            TextSpan(
              text: '$seconds',
              style: TextStyles.textStyle20.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.kPrimaryColor,
              ),
            ),
            const TextSpan(text: ' s'),
          ],
        ),
      ),
    );
  }
}
