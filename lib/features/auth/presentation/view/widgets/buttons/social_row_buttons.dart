import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/features/auth/presentation/view/widgets/buttons/social_outlined_button.dart';

class SocialRowButtons extends StatelessWidget {
  const SocialRowButtons({
    super.key,
    required this.onGooglePressed,
    required this.onApplePressed,
    required this.onFacebookPressed,
  });

  final void Function() onApplePressed;
  final void Function() onFacebookPressed;
  final void Function() onGooglePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialOutlinedButton(
          image: AppImages.imagesGoogleLogo,
          onPressed: onGooglePressed,
        ),
        SizedBox(width: 16.w),
        SocialOutlinedButton(
          image: AppImages.imagesAppleLogo,
          onPressed: onApplePressed,
        ),
        SizedBox(width: 16.w),
        SocialOutlinedButton(
          image: AppImages.imagesFacebookLogo,
          onPressed: onFacebookPressed,
        ),
      ],
    );
  }
}
