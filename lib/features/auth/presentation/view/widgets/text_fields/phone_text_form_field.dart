import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class PhoneTextFormField extends StatelessWidget {
  const PhoneTextFormField({
    super.key,
    required this.onSaved,
  });

  final void Function(String? newValue) onSaved;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 398.w,
      child: TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyles.textStyle15,
        validator: phoneNumberValidator,
        onSaved: onSaved,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.kLightGrey,
          contentPadding:
              EdgeInsets.symmetric(vertical: 22.h, horizontal: 33.w),
          hintText: 'Phone Number',
          prefix: Text(
            '+20',
            style: TextStyles.textStyle15.copyWith(
              color: AppColors.kSecondaryColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.w),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.w),
            borderSide: BorderSide(
              color: AppColors.kGreen,
              width: 1.w,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.w),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }

  String? phoneNumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    } else if (!RegExp(r'^\+20(10|11|12|15)[0-9]{8}$').hasMatch('+20$value')) {
      return 'Invalid phone number';
    }
    return null;
  }
}
