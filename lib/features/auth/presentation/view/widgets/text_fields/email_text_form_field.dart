import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class EmailTextFormField extends StatefulWidget {
  const EmailTextFormField({super.key});

  @override
  State<EmailTextFormField> createState() => _EmailTextFormFieldState();
}

class _EmailTextFormFieldState extends State<EmailTextFormField> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  final ValueNotifier<Color> _iconColor =
      ValueNotifier<Color>(AppColors.kDarkGrey);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 398.w,
      child: TextFormField(
        focusNode: _focusNode,
        controller: _controller,
        keyboardType: TextInputType.emailAddress,
        onTap: () {
          _focusNode.addListener(() {
            if (!_focusNode.hasFocus && _controller.text.isNotEmpty) {
              _iconColor.value = AppColors.kSecondaryColor;
            } else if (!_focusNode.hasFocus && _controller.text.isEmpty) {
              _iconColor.value = AppColors.kDarkGrey;
            } else {
              _iconColor.value = AppColors.kGreen;
            }
          });
        },
        style: TextStyles.textStyle15,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.kLightGrey,
          contentPadding: EdgeInsets.symmetric(vertical: 22.h),
          hintText: 'Email',
          suffixIcon: Padding(padding: EdgeInsets.only(right: 33.w)),
          prefixIcon: Container(
            height: 16.h,
            width: 16.w,
            margin: EdgeInsets.only(right: 8.w, left: 33.w),
            child: ValueListenableBuilder(
              valueListenable: _iconColor,
              builder: (context, value, child) => SvgPicture.asset(
                AppIcons.iconsMessage,
                colorFilter: ColorFilter.mode(
                  value,
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
    );
  }
}
