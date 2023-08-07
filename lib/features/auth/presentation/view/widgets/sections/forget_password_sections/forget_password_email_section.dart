import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forms/forget_password_view_form.dart';

class ForgetPasswordEmailSection extends StatelessWidget {
  const ForgetPasswordEmailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const ForgetPasswordViewForm(),
        SizedBox(height: 50.h),
      ],
    );
  }
}
