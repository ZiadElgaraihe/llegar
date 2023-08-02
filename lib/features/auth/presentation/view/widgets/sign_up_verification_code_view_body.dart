import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/successful_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/verification_code_view_sections/resend_code_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/otp_text_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/texts/page_title_text.dart';

class SignUpVerificationCodeViewBody extends StatelessWidget {
  const SignUpVerificationCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const AuthenticationAppBar(),
          const PageTitleText(
            title: 'You’ve got mail',
            content:
                'We have sent the OTP verification code\nto your email address. Check your\nemail and enter the code below',
            titleImage: AppImages.imagesMailImage,
          ),
          const OtpTextField(),
          const ResendCodeSection(),
          ColoredButton(
            btnTitle: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, SuccessfulSignUpView.id);
            },
          ),
        ],
      ),
    );
  }
}
