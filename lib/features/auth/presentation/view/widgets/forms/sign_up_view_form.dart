import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/email_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/password_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

class SignUpViewForm extends StatelessWidget {
  const SignUpViewForm({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          EmailTextFormField(
            onSaved: (newValue) {
              context.read<SignUpCubit>().email = newValue;
            },
          ),
          SizedBox(height: 16.h),
          PasswordTextFormField(
            onSaved: (newValue) {
              context.read<SignUpCubit>().password = newValue;
            },
          ),
        ],
      ),
    );
  }
}
