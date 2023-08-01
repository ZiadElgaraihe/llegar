import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/remember_me_row.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/email_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/password_text_form_field.dart';

class ClassicSignUpSection extends StatelessWidget {
  const ClassicSignUpSection({super.key});

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
          'Create Your Account',
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
        ColoredButton(btnTitle: 'Sign up', onPressed: () {}),
        SizedBox(height: 31.h),
      ],
    );
  }
}
