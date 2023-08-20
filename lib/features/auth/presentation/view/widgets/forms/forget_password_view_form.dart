import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/features/auth/validators/validators.dart';
import 'package:llegar/core/widgets/data_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';

class ForgetPasswordViewForm extends StatelessWidget {
  const ForgetPasswordViewForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: DataTextFormField(
        hint: 'Email',
        keyboardType: TextInputType.emailAddress,
        validator: (value, hint) {
          return Validators.emailValidator(value);
        },
        onSaved: (newValue) {
          context.read<ForgetPasswordCubit>().email = newValue;
        },
      ),
    );
  }
}
