import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/functions/change_icon_color.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/validators/validators.dart';

class EditProfileEmailTextFormField extends StatefulWidget {
  const EditProfileEmailTextFormField({super.key, required this.onSaved});

  final void Function(String? newValue) onSaved;

  @override
  State<EditProfileEmailTextFormField> createState() =>
      _EditProfileEmailTextFormFieldState();
}

class _EditProfileEmailTextFormFieldState
    extends State<EditProfileEmailTextFormField> {
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
          fillColor: AppColors.kLightBlueGrey,
          contentPadding:
              EdgeInsets.symmetric(vertical: 22.h, horizontal: 33.w),
          hintText: 'Email',
          suffixIcon: Container(
            height: 16.h,
            width: 16.w,
            margin: EdgeInsets.only(right: 33.w, left: 8.w),
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
              color: AppColors.kRed,
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }
}
