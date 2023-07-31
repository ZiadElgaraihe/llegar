import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/widgets/buttons/continue_with_outlined_button.dart';

class SocialLogInSection extends StatelessWidget {
  const SocialLogInSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 105.h),
          SvgPicture.asset(
            AppImages.imagesLetsYouIn,
            height: 204.h,
            width: 241.w,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 24.h),
          Text(
            'Let\'s You in',
            style: TextStyles.textStyle48,
          ),
          SizedBox(height: 22.h),
          ContinueWithOutlinedButton(
            onPressed: () {},
            image: AppImages.imagesContinueWithFacebook,
            title: 'Continue with Facebook',
          ),
          SizedBox(height: 16.h),
          ContinueWithOutlinedButton(
            onPressed: () {},
            image: AppImages.imagesContinueWithGoogle,
            title: 'Continue with Google',
          ),
          SizedBox(height: 16.h),
          ContinueWithOutlinedButton(
            onPressed: () {},
            image: AppImages.imagesContinueWithApple,
            title: 'Continue with Apple',
          ),
          SizedBox(height: 22.h),
      ],
    );
  }
}