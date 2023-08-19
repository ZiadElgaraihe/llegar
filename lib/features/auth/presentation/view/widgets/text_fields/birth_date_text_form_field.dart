import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';

class BirthDateTextFormField extends StatefulWidget {
  const BirthDateTextFormField({super.key, required this.onSaved});

  final void Function(String? newValue) onSaved;

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
        style: TextStyles.textStyle18.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        validator: birthDateValidator,
        onSaved: widget.onSaved,
        readOnly: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.kLightBlueGrey,
          contentPadding:
              EdgeInsets.symmetric(vertical: 14.5.h, horizontal: 16.w),
          hintText: 'yyyy/mm/dd',
          suffixIcon: Material(
            color: AppColors.kTransparent,
            child: IconButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2000, 1, 1),
                  firstDate: DateTime(1950),
                  lastDate: DateTime(
                    DateTime.now().year - 10,
                    DateTime.now().month,
                    DateTime.now().day,
                  ),
                );
                if (date != null) {
                  String day = date.day.toString().length == 1
                      ? '0${date.day}'
                      : '${date.day}';
                  String month = date.month.toString().length == 1
                      ? '0${date.month}'
                      : '${date.month}';
                  _controller.text = '${date.year}/$month/$day';
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
        ),
      ),
    );
  }

  String? birthDateValidator(value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
}
