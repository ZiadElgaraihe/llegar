import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/birth_date_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

class BirthDateSection extends StatelessWidget {
  const BirthDateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: 16.w),
        width: 294.w,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Birthday Date',
                  style: TextStyles.textStyle16.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                Text(
                  ' *',
                  style: TextStyles.textStyle16.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            BirthDateTextFormField(
              onSaved: (newValue) {
                context.read<SignUpCubit>().birthDate = newValue;
              },
            ),
          ],
        ),
      ),
    );
  }
}
