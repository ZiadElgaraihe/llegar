import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class OtpTextField extends StatefulWidget {
  const OtpTextField({
    super.key,
    required this.resetCodeControllers,
  });

  final List<TextEditingController> resetCodeControllers;

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          width: 83.w,
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
            color: AppColors.kLightBlueGrey,
            borderRadius: BorderRadius.circular(5.w),
          ),
          child: TextField(
            controller: widget.resetCodeControllers[index],
            maxLength: 1,
            focusNode: focusNodes[index],
            onChanged: (value) {
              if (value.length == 1) {
                if (index != 3) {
                  focusNodes[index].nextFocus();
                } else {
                  focusNodes[index].unfocus();
                }
              } else if (value.isEmpty) {
                if (index != 0) {
                  focusNodes[index].previousFocus();
                } else {
                  focusNodes[index].unfocus();
                }
              }
            },
            textAlign: TextAlign.center,
            style: TextStyles.textStyle20,
            showCursor: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 24.h),
              counterText: '',
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.kPrimaryColor,
                  width: 1.5.w,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
