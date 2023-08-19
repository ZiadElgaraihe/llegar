import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/search/presentation/view/search_view.dart';

class HomeSearchTextField extends StatelessWidget {
  const HomeSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: 42.h,
        child: TextField(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const SearchView(),
              ),
            );
          },
          readOnly: true,
          style: TextStyles.textStyle14,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.kLightBlueGrey,
            contentPadding: EdgeInsets.symmetric(vertical: 9.h),
            hintText: 'Search',
            suffixIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              margin: EdgeInsets.only(right: 8.w),
              child: SvgPicture.asset(
                AppIcons.iconsFilter,
                height: 24.h,
                width: 24.w,
              ),
            ),
            prefixIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              margin: EdgeInsets.only(left: 8.w),
              child: SvgPicture.asset(
                AppIcons.iconsSearch,
                height: 24.h,
                width: 24.w,
                colorFilter: const ColorFilter.mode(
                  AppColors.kDarkGrey,
                  BlendMode.srcATop,
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
