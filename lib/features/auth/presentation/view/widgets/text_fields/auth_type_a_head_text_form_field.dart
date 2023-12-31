import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class AuthTypeAHeadTextFormField extends StatefulWidget {
  const AuthTypeAHeadTextFormField({
    super.key,
    required this.hint,
    required this.suggestionList,
    required this.suggestionListHeight,
    required this.onSaved,
  });

  final String hint;
  final double suggestionListHeight;
  final List<String> suggestionList;
  final void Function(String? newValue) onSaved;

  @override
  State<AuthTypeAHeadTextFormField> createState() =>
      _AuthTypeAHeadTextFormFieldState();
}

class _AuthTypeAHeadTextFormFieldState
    extends State<AuthTypeAHeadTextFormField> {
  final TextEditingController _controller = TextEditingController();
  final ValueNotifier<bool> _isFocused = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isFocused,
      builder: (context, value, child) => AnimatedPadding(
        duration: const Duration(milliseconds: 500),
        padding: EdgeInsets.only(
          bottom: value ? (widget.suggestionListHeight + 32).h : 16.h,
        ),
        child: TypeAheadFormField(
          validator: (value) {
            return typeAHeadValidator(value, widget.suggestionList);
          },
          onSaved: widget.onSaved,
          onSuggestionsBoxToggle: (isSuggestionsBoxToggle) {
            _isFocused.value = isSuggestionsBoxToggle;
          },
          textFieldConfiguration: TextFieldConfiguration(
            controller: _controller,
            style: TextStyles.textStyle15,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              hintText: widget.hint,
              suffix: SvgPicture.asset(
                AppIcons.iconsArrow,
                colorFilter: const ColorFilter.mode(
                    AppColors.kDarkGrey, BlendMode.srcATop),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.w),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.w),
                borderSide: BorderSide(
                  color: const Color.fromRGBO(243, 154, 74, 0.50),
                  width: 1.5.w,
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
          suggestionsCallback: suggestionCallback,
          itemBuilder: (context, itemData) => Container(
            height: 34.h,
            width: 374.w,
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            alignment: Alignment.centerLeft,
            child: Text(
              itemData,
              style: TextStyles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.inter().fontFamily,
              ),
            ),
          ),
          onSuggestionSelected: (suggestion) {
            _controller.text = suggestion;
          },
          suggestionsBoxDecoration: SuggestionsBoxDecoration(
            borderRadius: BorderRadius.circular(8.w),
            elevation: 2,
            color: AppColors.kBackgroundColor,
          ),
          layoutArchitecture: (items, controller) => SizedBox(
            height: widget.suggestionListHeight,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => items.elementAt(index),
            ),
          ),
        ),
      ),
    );
  }

  FutureOr<Iterable<String>> suggestionCallback(pattern) {
    return widget.suggestionList.where(
      (element) => element.toLowerCase().contains(
            pattern.toLowerCase(),
          ),
    );
  }

  String? typeAHeadValidator(
    String? value,
    List<String> suggestionList,
  ) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    } else if (!suggestionList.contains(value)) {
      return 'Invalid value';
    }
    return null;
  }
}
