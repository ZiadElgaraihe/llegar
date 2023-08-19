import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class TypeAHeadItemBuilderContainer extends StatelessWidget {
  const TypeAHeadItemBuilderContainer({
    super.key,
    required this.itemData,
  });

  final String itemData;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
