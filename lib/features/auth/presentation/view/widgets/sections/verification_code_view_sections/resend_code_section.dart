import 'dart:async';
import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class ResendCodeSection extends StatefulWidget {
  const ResendCodeSection({super.key});

  @override
  State<ResendCodeSection> createState() => _ResendCodeSectionState();
}

class _ResendCodeSectionState extends State<ResendCodeSection> {
  final ValueNotifier<int> _seconds = ValueNotifier<int>(5);
  final ValueNotifier<bool> _canResend = ValueNotifier<bool>(false);
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_seconds.value > 0) {
          _seconds.value -= 1;
        } else {
          timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Text(
          'Didn’t receive email?',
          style: TextStyles.textStyle20.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.kSecondaryColor,
          ),
        ),
        SizedBox(height: 16.h),
        ValueListenableBuilder(
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
        ),
        SizedBox(height: 10.h),
        ValueListenableBuilder(
          valueListenable: _canResend,
          builder: (context, canResend, child) => AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: canResend ? 50.h : 0,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Resend code',
                style: TextStyles.textStyle20,
              ),
            ),
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
