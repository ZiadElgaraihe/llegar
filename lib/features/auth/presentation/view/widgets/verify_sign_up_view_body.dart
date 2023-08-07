import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/verification_sections/verify_sign_up_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/texts/page_title_text.dart';

class VerifySignUpViewBody extends StatelessWidget {
  const VerifySignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          AuthenticationAppBar(),
          PageTitleText(
            title: 'You’ve got mail',
            content:
                'We have sent the OTP verification code\nto your email address. Check your\nemail and enter the code below',
            titleImage: AppImages.imagesMailImage,
          ),
          VerifySignUpSection(),
        ],
      ),
    );
  }
}
