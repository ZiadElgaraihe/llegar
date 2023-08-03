import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class NewPasswordTextFormField extends StatefulWidget {
  const NewPasswordTextFormField({super.key, required this.hint});

  final String hint;

  @override
  State<NewPasswordTextFormField> createState() =>
      _NewPasswordTextFormFieldState();
}

class _NewPasswordTextFormFieldState extends State<NewPasswordTextFormField> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
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
          controller: _controller,
          onTap: () {
            _focusNode.addListener(
              () {
                if (!_focusNode.hasFocus && _controller.text.isNotEmpty) {
                  _iconColor.value = AppColors.kSecondaryColor;
                } else if (!_focusNode.hasFocus && _controller.text.isEmpty) {
                  _iconColor.value = AppColors.kDarkGrey;
                } else {
                  _iconColor.value = AppColors.kGreen;
                }
              },
            );
          },
          style: TextStyles.textStyle15,
          obscureText: !isVisible,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.kLightGrey,
            contentPadding:
                EdgeInsets.symmetric(vertical: 22.h, horizontal: 33.w),
            hintText: widget.hint,
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
