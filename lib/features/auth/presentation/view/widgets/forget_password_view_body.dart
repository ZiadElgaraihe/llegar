import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/forget_password_sections/forget_password_email_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/texts/page_title_text.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          AuthenticationAppBar(),
          PageTitleText(
            title: 'Forget Password',
            content:
                'Enter your email address to get an OTP Code\nto reset your Password',
            titleImage: AppImages.imagesKey,
          ),
          ForgetPasswordEmailSection()
        ],
      ),
    );
  }
}
