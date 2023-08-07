import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/blocs/reset_password_bloc_consumer.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forms/reset_password_view_form.dart';
import 'package:llegar/features/auth/presentation/view/widgets/rows/remember_me_row.dart';

class CreateNewPasswordSection extends StatefulWidget {
  const CreateNewPasswordSection({super.key});

  @override
  State<CreateNewPasswordSection> createState() =>
      _CreateNewPasswordSectionState();
}

class _CreateNewPasswordSectionState extends State<CreateNewPasswordSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResetPasswordViewForm(formKey: _formKey),
        Container(
          margin: EdgeInsets.only(left: 16.w),
          alignment: Alignment.centerLeft,
          child: const RememberMeRow(),
        ),
        SizedBox(height: 243.h),
        ResetPasswordBlocConsumer(formKey: _formKey),
        SizedBox(height: 50.h),
      ],
    );
  }
}
