import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/remember_me_row.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/email_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/password_text_form_field.dart';

class ClassicLogInSection extends StatelessWidget {
  const ClassicLogInSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.h),
        SvgPicture.asset(
          AppImages.imagesLogo,
          height: 175.h,
          width: 175.w,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 18.2.h),
        Text(
          'Login to your account',
          style: TextStyles.textStyle32.copyWith(
            color: AppColors.kSecondaryColor,
          ),
        ),
        SizedBox(height: 32.h),
        const EmailTextFormField(),
        SizedBox(height: 16.h),
        const PasswordTextFormField(),
        SizedBox(height: 26.h),
        const RememberMeRow(),
        SizedBox(height: 24.h),
        ColoredButton(btnTitle: 'Sign in', onPressed: () {}),
        SizedBox(height: 4.h),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forget the password?',
            style: TextStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.inter().fontFamily,
              color: AppColors.kGreen,
            ),
          ),
        ),
        SizedBox(height: 2.7.h),
      ],
    );
  }
}
