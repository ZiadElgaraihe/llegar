import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';

///change icon color depend on the state of the field
///1- if unfocus and empty (kDarkGrey)
///2- if unfocus and not empty (kSecondaryColor)
///3- if focus (kGreen)
void changeIconColor({
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
