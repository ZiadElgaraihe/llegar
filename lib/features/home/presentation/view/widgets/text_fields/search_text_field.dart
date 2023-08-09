import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final FocusNode _focusNode = FocusNode();
  final ValueNotifier<Color> _iconColor =
      ValueNotifier<Color>(AppColors.kDarkGrey);

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      onTap: () {
        changeIconColor(
          focusNode: _focusNode,
          iconColor: _iconColor,
        );
      },
      style: TextStyles.textStyle15,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kLightGrey,
        contentPadding: EdgeInsets.symmetric(vertical: 11.h),
        hintText: 'Password',
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 8.w),
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              splashRadius: 25.w,
              icon: SvgPicture.asset(
                AppIcons.iconsFilter,
                height: 32.h,
                width: 32.w,
              ),
            ),
          ),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: ValueListenableBuilder(
            valueListenable: _iconColor,
            builder: (context, color, child) => Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                splashRadius: 25.w,
                icon: SvgPicture.asset(
                  AppIcons.iconsSearch,
                  height: 32.h,
                  width: 32.w,
                  colorFilter: ColorFilter.mode(color, BlendMode.srcATop),
                ),
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
            color: AppColors.kPrimaryColor,
            width: 1.w,
          ),
        ),
      ),
    );
  }

  //change icon color depend on the state of the field
  //1- if unfocus (0xFF7A828A)
  //2- if focus (0xFF1E1E1E)
  void changeIconColor({
    required FocusNode focusNode,
    required ValueNotifier<Color> iconColor,
  }) {
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        iconColor.value = AppColors.kDarkGrey;
      } else {
        iconColor.value = AppColors.kSecondaryColor;
      }
    });
  }
}
