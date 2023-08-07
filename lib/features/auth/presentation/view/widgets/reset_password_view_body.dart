import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_images.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/features/auth/presentation/view/successful_view.dart';
import 'package:llegar/features/auth/presentation/view/widgets/app_bars/auth_app_bar.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/remember_me_row.dart';
import 'package:llegar/features/auth/presentation/view/widgets/sections/reset_password_view_sections/create_password_section.dart';
import 'package:llegar/features/auth/presentation/view/widgets/texts/page_title_text.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const AuthenticationAppBar(),
          SizedBox(height: 26.h),
          const PageTitleText(
            title: 'Create new password',
            content:
                'Save the new password in a safe place,\nif you forget it then you have to do a\nforgot password again.',
            titleImage: AppImages.imagesLockKey,
          ),
          const CreatePasswordSection(),
          Container(
            margin: EdgeInsets.only(left: 16.w),
            alignment: Alignment.centerLeft,
            child: const RememberMeRow(),
          ),
          SizedBox(height: 243.h),
          ColoredButton(
            btnTitle: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, SuccessfulView.id,
                  arguments: 'Reset Password Done');
            },
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
