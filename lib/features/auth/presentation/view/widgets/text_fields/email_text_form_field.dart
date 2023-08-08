import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/validators/validators.dart';

class EmailTextFormField extends StatefulWidget {
  const EmailTextFormField({super.key, required this.onSaved});

  final void Function(String? newValue) onSaved;

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
          changeIconColor(
            focusNode: _focusNode,
            controller: _controller,
            iconColor: _iconColor,
          );
        },
        validator: Validators.emailValidator,
        onSaved: widget.onSaved,
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

  //change icon color depend on the state of the field
  //1- if unfocus and empty (kDarkGrey)
  //2- if unfocus and not empty (kSecondaryColor)
  //3- if focus (kGreen)
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
}
