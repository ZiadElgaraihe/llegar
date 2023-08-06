import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

SnackBar errorSnackBar(String errMessage) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    duration: Duration(
      seconds: errMessage.length > 50
          //5 seconds for long errMessage
          ? 5
          : errMessage.length < 20
              //3 seconds for short errMessage
              ? 3
              //4 seconds for medium errMessage
              : 4,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
    content: Text(
      errMessage,
      style: TextStyles.textStyle18,
      textAlign: TextAlign.center,
    ),
  );
}
