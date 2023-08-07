import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/blocs/verify_sign_up_bloc_consumer.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/verification_code_view_sections/resend_code_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/otp_text_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/texts/page_title_text.dart';

class SignUpVerificationCodeViewBody extends StatefulWidget {
  const SignUpVerificationCodeViewBody({super.key});

  @override
  State<SignUpVerificationCodeViewBody> createState() =>
      _SignUpVerificationCodeViewBodyState();
}

class _SignUpVerificationCodeViewBodyState
    extends State<SignUpVerificationCodeViewBody> {
  final List<TextEditingController> _resetCodeControllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

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
          SizedBox(height: 28.h),
          OtpTextField(
            resetCodeControllers: _resetCodeControllers,
          ),
          const ResendCodeSection(),
          VerifySignUpBlocConsumer(
            resetCodeControllers: _resetCodeControllers,
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
