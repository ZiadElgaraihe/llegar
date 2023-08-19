import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/functions/future_delayed_navigator.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/search/presentation/view/widgets/containers/filter_bottom_sheet_container.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  final ValueNotifier<Color> _iconColor =
      ValueNotifier<Color>(AppColors.kPrimaryColor);

  @override
  void initState() {
    super.initState();
    handleFocusChangeAndNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Material(
        child: SizedBox(
          height: 42.h,
          child: TextField(
            autofocus: true,
            controller: _controller,
            focusNode: _focusNode,
            style: TextStyles.textStyle14,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.kLightGrey,
              contentPadding: EdgeInsets.symmetric(vertical: 9.h),
              hintText: 'Search',
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: Material(
                  color: AppColors.kTransparent,
                  child: IconButton(
                    onPressed: () {
                      futureDelayedNavigator(
                        () {
                          showSearchFilter(context);
                        },
                      );
                    },
                    padding: EdgeInsets.zero,
                    splashRadius: 15.w,
                    icon: SvgPicture.asset(
                      AppIcons.iconsFilter,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: ValueListenableBuilder(
                  valueListenable: _iconColor,
                  builder: (context, color, child) => Material(
                    color: AppColors.kTransparent,
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      splashRadius: 15.w,
                      icon: SvgPicture.asset(
                        AppIcons.iconsSearch,
                        height: 24.h,
                        width: 24.w,
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
          ),
        ),
      ),
    );
  }

  void showSearchFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.w),
      ),
      builder: (context) => const FilterBottomSheetContainer(),
    );
  }

  //handle the conditions of focus
  //1- focus (1E1E1E)
  //2- unfocus and not empty (7A828A)
  //3- unfocus and empty (pop)
  void handleFocusChangeAndNavigation() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _iconColor.value = AppColors.kPrimaryColor;
      } else if (_controller.text.isNotEmpty) {
        _iconColor.value = AppColors.kDarkGrey;
      } else {
        Navigator.pop(context);
      }
    });
  }

  Future<bool> onWillPop() async {
    //if text is not empty pop
    if (_controller.text.isNotEmpty) {
      return true;
    }
    //if text is empty unfocus
    _focusNode.unfocus();
    return false;
  }
}
