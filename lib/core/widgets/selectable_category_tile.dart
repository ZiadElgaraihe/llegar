import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class SelectableCategoryTile extends StatelessWidget {
  const SelectableCategoryTile({
    super.key,
    required this.title,
    this.icon,
    required this.selectedCategory,
  });

  final String title;
  final String? icon;
  final ValueNotifier<String> selectedCategory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectedCategory.value = title;
      },
      child: ValueListenableBuilder(
        valueListenable: selectedCategory,
        builder: (context, value, child) => Container(
          height: 42.h,
          padding: EdgeInsets.symmetric(
            horizontal: 22.w,
            vertical: AppConfig.sizeData.width >= 600 ? 0 : 7.h,
          ),
          decoration: BoxDecoration(
            color: value == title ? AppColors.kPrimaryColor : Colors.white,
            borderRadius: BorderRadius.circular(22.w),
            border: Border.all(
              color: AppColors.kPrimaryColor,
              width: 2.w,
            ),
          ),
          child: Row(
            children: [
              if (icon != null)
                SvgPicture.asset(
                  icon!,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    value == title
                        ? const Color(0xFFE1E8FF)
                        : AppColors.kPrimaryColor,
                    BlendMode.srcATop,
                  ),
                ),
              if (icon != null) SizedBox(width: 8.w),
              Text(
                title,
                style: TextStyles.textStyle20.copyWith(
                  color: value == title
                      ? const Color(0xFFE1E8FF)
                      : AppColors.kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
