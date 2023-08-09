import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class TopDealsCategoryItem extends StatelessWidget {
  const TopDealsCategoryItem({
    super.key,
    required this.title,
    required this.selectedCategory,
  });

  final String title;
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
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 7.h),
          decoration: BoxDecoration(
            color:
                value == title ? AppColors.kPrimaryColor : Colors.white,
            borderRadius: BorderRadius.circular(22.w),
            border: Border.all(
              color: AppColors.kPrimaryColor,
              width: 2.w,
            ),
          ),
          child: Text(
            title,
            style: TextStyles.textStyle20.copyWith(
              color: value == title
                  ? const Color(0xFFE1E8FF)
                  : AppColors.kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
