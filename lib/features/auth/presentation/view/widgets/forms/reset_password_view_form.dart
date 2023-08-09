import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/text_styles.dart';
import 'package:llegar/features/auth/validators/validators.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/new_password_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/reset_passwordcubit/reset_password_cubit.dart';

class ResetPasswordViewForm extends StatefulWidget {
  const ResetPasswordViewForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  State<ResetPasswordViewForm> createState() => _ResetPasswordViewFormState();
}

class _ResetPasswordViewFormState extends State<ResetPasswordViewForm> {
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  void dispose() {
    _newPassword.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Column(
        children: [
          SizedBox(height: 34.h),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16.w),
            child: Text(
              'Create a new password',
              style: TextStyles.textStyle16,
            ),
          ),
          SizedBox(height: 16.h),
          NewPasswordTextFormField(
            hint: 'New Password',
            controller: _newPassword,
            validator: Validators.passwordValidator,
            onSaved: (newValue) {
              context.read<ResetPasswordCubit>().password = newValue;
            },
          ),
          SizedBox(height: 16.h),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16.w),
            child: Text(
              'Confirm a new password',
              style: TextStyles.textStyle16,
            ),
          ),
          SizedBox(height: 16.h),
          NewPasswordTextFormField(
            hint: 'Confirm Password',
            controller: _confirmPassword,
            validator: (value) {
              if (_confirmPassword.text != _newPassword.text) {
                return 'Passwords do not match. Please try again.';
              }
              return null;
            },
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
