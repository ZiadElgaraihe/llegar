import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class BirthDateTextFormField extends StatefulWidget {
  const BirthDateTextFormField({super.key});

  @override
  State<BirthDateTextFormField> createState() => _BirthDateTextFormFieldState();
}

class _BirthDateTextFormFieldState extends State<BirthDateTextFormField> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 294.w,
      child: TextFormField(
        controller: _controller,
        keyboardType: TextInputType.datetime,
        style: TextStyles.textStyle18.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        readOnly: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.kLightGrey,
          contentPadding:
              EdgeInsets.symmetric(vertical: 14.5.h, horizontal: 16.w),
          hintText: '1/1/2000',
          suffixIcon: Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2000, 1, 1),
                  firstDate: DateTime(1950),
                  lastDate: DateTime(DateTime.now().year - 10,
                      DateTime.now().month, DateTime.now().day),
                );
                if (date != null) {
                  _controller.text = '${date.day}/${date.month}/${date.year}';
                }
              },
              splashRadius: 20,
              icon: SvgPicture.asset(
                AppIcons.iconsCalender,
                height: 27.h,
                width: 24.w,
                fit: BoxFit.fill,
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
              color: Colors.red,
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }
}
