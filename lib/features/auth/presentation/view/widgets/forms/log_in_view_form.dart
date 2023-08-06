import 'package:flutter/material.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/email_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/password_text_form_field.dart';

class LogInViewForm extends StatelessWidget {
  const LogInViewForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailTextFormField(controller: _emailController),
          SizedBox(height: 16.h),
          PasswordTextFormField(controller: _passwordController),
        ],
      ),
    );
  }
}
