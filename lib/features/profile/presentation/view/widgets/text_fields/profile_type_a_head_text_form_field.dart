import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/profile/presentation/view/widgets/containers/type_a_head_item_builder_container.dart';

class ProfileTypeAHeadTextFormField extends StatefulWidget {
  const ProfileTypeAHeadTextFormField({
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
  State<ProfileTypeAHeadTextFormField> createState() =>
      _ProfileTypeAHeadTextFormFieldState();
}

class _ProfileTypeAHeadTextFormFieldState
    extends State<ProfileTypeAHeadTextFormField> {
  final TextEditingController _controller = TextEditingController();
  final ValueNotifier<bool> _isFocused = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isFocused,
      builder: (context, value, child) => AnimatedPadding(
        duration: const Duration(milliseconds: 500),
        padding: EdgeInsets.only(
          bottom: value ? (widget.suggestionListHeight + 40).h : 40.h,
        ),
        child: TypeAheadFormField(
          onSuggestionsBoxToggle: (value) {
            _isFocused.value = value;
          },
          validator: (value) {
            return typeAHeadValidator(value, widget.suggestionList);
          },
          onSaved: widget.onSaved,
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
          suggestionsCallback: (pattern) {
            return widget.suggestionList.where(
              (element) => element.toLowerCase().contains(
                    pattern.toLowerCase(),
                  ),
            );
          },
          itemBuilder: (context, itemData) =>
              TypeAHeadItemBuilderContainer(itemData: itemData),
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
