import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';

class RememberMeRow extends StatefulWidget {
  const RememberMeRow({super.key});

  @override
  State<RememberMeRow> createState() => _RememberMeRowState();
}

class _RememberMeRowState extends State<RememberMeRow> {
  final ValueNotifier<bool> _isChecked = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 20.w,
          height: 20.h,
          child: ValueListenableBuilder(
            valueListenable: _isChecked,
            builder: (context, value, child) => Checkbox(
              value: value,
              onChanged: (value) {
                _isChecked.value = value!;
              },
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          'Remember me',
          style: TextStyles.textStyle14.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.inter().fontFamily,
            color: AppColors.kSecondaryColor,
          ),
        ),
      ],
    );
  }
}
