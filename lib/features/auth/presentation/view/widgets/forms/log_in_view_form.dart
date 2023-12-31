import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/email_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/password_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/log_in_cubit/log_in_cubit.dart';

class LogInViewForm extends StatelessWidget {
  const LogInViewForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailTextFormField(
            onSaved: (newValue) {
              context.read<LogInCubit>().email = newValue;
            },
          ),
          SizedBox(height: 16.h),
          PasswordTextFormField(
            onSaved: (newValue) {
              context.read<LogInCubit>().password = newValue;
            },
          ),
        ],
      ),
    );
  }
}
