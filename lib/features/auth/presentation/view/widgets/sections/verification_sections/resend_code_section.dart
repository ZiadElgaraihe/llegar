import 'dart:async';
import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/widgets/texts/listenable_rich_text.dart';

class ResendCodeSection extends StatefulWidget {
  const ResendCodeSection({super.key});

  @override
  State<ResendCodeSection> createState() => _ResendCodeSectionState();
}

class _ResendCodeSectionState extends State<ResendCodeSection> {
  final ValueNotifier<int> _seconds = ValueNotifier<int>(60);
  final ValueNotifier<bool> _canResend = ValueNotifier<bool>(false);
  late Timer timer;
  @override
  void initState() {
    super.initState();
    startResendCodeTimer();
  }

  @override
  void dispose() {
    super.dispose();
    //cancel timer
    timer.cancel();
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
        ListenableRichText(seconds: _seconds),
        SizedBox(height: 10.h),
        ValueListenableBuilder(
          valueListenable: _canResend,
          builder: (context, canResend, child) => AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: canResend ? 50.h : 0,
            child: TextButton(
              onPressed: resetResendCodeTimer,
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

  //reset resend code timer method
  void resetResendCodeTimer() {
    _canResend.value = false;
    _seconds.value = 60;
    startResendCodeTimer();
  }

  //start resend code timer method
  void startResendCodeTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_seconds.value > 0) {
          _seconds.value -= 1;
        } else {
          _canResend.value = true;
          timer.cancel();
        }
      },
    );
  }
}
