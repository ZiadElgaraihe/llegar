import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/presentation/view/widgets/blocs/forget_password_bloc_consumer.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forms/forget_password_view_form.dart';

class ForgetPasswordEmailSection extends StatefulWidget {
  const ForgetPasswordEmailSection({
    super.key,
  });

  @override
  State<ForgetPasswordEmailSection> createState() => _ForgetPasswordEmailSectionState();
}

class _ForgetPasswordEmailSectionState extends State<ForgetPasswordEmailSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        ForgetPasswordViewForm(formKey: _formKey),
        SizedBox(height: 438.h),
        ForgetPasswordBlocConsumer(formKey: _formKey),
        SizedBox(height: 50.h),
      ],
    );
  }
}
