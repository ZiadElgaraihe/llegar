import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/functions/log_in_view_functions.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  final FocusNode _focusNode = FocusNode();
  final ValueNotifier<bool> _isVisible = ValueNotifier<bool>(false);
  final ValueNotifier<Color> _iconColor =
      ValueNotifier<Color>(AppColors.kDarkGrey);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 398.w,
      child: ValueListenableBuilder(
        valueListenable: _isVisible,
        builder: (context, isVisible, child) => TextFormField(
          focusNode: _focusNode,
          controller: widget.controller,
          onTap: () {
            changeIconColor(
              focusNode: _focusNode,
              controller: widget.controller,
              iconColor: _iconColor,
            );
          },
          validator: passwordValidator,
          style: TextStyles.textStyle15,
          obscureText: !isVisible,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.kLightGrey,
            contentPadding: EdgeInsets.symmetric(vertical: 22.h),
            hintText: 'Password',
            suffixIcon: ValueListenableBuilder(
              valueListenable: _iconColor,
              builder: (context, color, child) => Padding(
                padding: EdgeInsets.only(right: 33.w),
                child: InkWell(
                  onTap: () {
                    _isVisible.value = !_isVisible.value;
                  },
                  child: Icon(
                    isVisible
                        ? Icons.visibility_rounded
                        : Icons.visibility_off_rounded,
                    size: 20.w,
                    color: color,
                  ),
                ),
              ),
            ),
            prefixIcon: Container(
              height: 16.h,
              width: 16.w,
              margin: EdgeInsets.only(right: 8.w, left: 33.w),
              child: ValueListenableBuilder(
                valueListenable: _iconColor,
                builder: (context, color, child) => SvgPicture.asset(
                  AppIcons.iconsLock,
                  colorFilter: ColorFilter.mode(
                    color,
                    BlendMode.srcATop,
                  ),
                ),
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
      ),
    );
  }
}
