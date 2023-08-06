import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';

void changeTextFieldIconColor({
  required FocusNode focusNode,
  required TextEditingController controller,
  required ValueNotifier<Color> iconColor,
}) {
  focusNode.addListener(() {
    if (!focusNode.hasFocus && controller.text.isNotEmpty) {
      iconColor.value = AppColors.kSecondaryColor;
    } else if (!focusNode.hasFocus && controller.text.isEmpty) {
      iconColor.value = AppColors.kDarkGrey;
    } else {
      iconColor.value = AppColors.kGreen;
    }
  });
}
