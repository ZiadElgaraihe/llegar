import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/functions/future_delayed_navigator.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_icons.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/social_log_in_view.dart';

class WelcomeViewAppBar extends StatelessWidget {
  const WelcomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          futureDelayedNavigator(
            () {
              Navigator.pushReplacementNamed(context, SocialLogInView.id);
            },
          );
        },
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size(77.w, 34.h)),
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
        ),
        child: Row(
          children: [
            Text(
              'Skip',
              style: TextStyles.textStyle24.copyWith(
                color: AppColors.kSecondaryColor,
              ),
            ),
            SizedBox(width: 8.w),
            SvgPicture.asset(
              AppIcons.iconsRightTrend,
              height: 22.h,
              width: 20.w,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
