import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/forget_password_verification_code_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/data_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/texts/page_title_text.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const AuthenticationAppBar(),
          const PageTitleText(
            title: 'Forget Password',
            content:
                'Enter your email address to get an OTP Code\nto reset your Password',
            titleImage: AppImages.imagesKey,
          ),
          SizedBox(height: 28.h),
          Container(
            margin: EdgeInsets.only(left: 16.w),
            alignment: Alignment.centerLeft,
            child: Text(
              'Email',
              style: TextStyles.textStyle16.copyWith(
                color: AppColors.kSecondaryColor,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          const DataTextFormField(
            hint: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 438.h),
          ColoredButton(
            btnTitle: 'Continue',
            onPressed: () {
              Navigator.pushNamed(
                  context, ForgetPasswordVerificationCodeView.id);
            },
          ),
        ],
      ),
    );
  }
}