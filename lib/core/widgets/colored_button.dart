import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({
    super.key,
    required this.btnTitle,
    required this.onPressed,
  });

  final String btnTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            const MaterialStatePropertyAll(AppColors.kPrimaryColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(380.w, 58.h),
        ),
      ),
      child: Text(
        btnTitle,
        style: TextStyles.textStyle20,
      ),
    );
  }
}
