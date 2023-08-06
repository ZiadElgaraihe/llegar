import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';

String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email is required';
  } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
      .hasMatch(value)) {
    return 'Invalid email address';
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Password is required';
  } else if (value.length < 8) {
    return 'Password must be 8 characters at least';
  }
  return null;
}

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
