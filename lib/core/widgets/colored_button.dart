import 'package:flutter/material.dart';
import 'package:llegar/core/functions/future_delayed_navigator.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({
    super.key,
    required this.title,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
  });

  final String title;
  final Color textColor;
  final Color backgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        futureDelayedNavigator(
          () {
            onPressed();
          },
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.w),
          ),
        ),
        elevation: const MaterialStatePropertyAll(0),
        fixedSize: MaterialStatePropertyAll(
          Size(174.w, 58.h),
        ),
      ),
      child: Text(
        title,
        style: TextStyles.textStyle20.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
