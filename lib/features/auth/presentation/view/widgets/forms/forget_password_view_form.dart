import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/functions/validators/email_validator.dart';
import 'package:llegar/features/auth/presentation/view/widgets/blocs/forget_password_bloc_consumer.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/data_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';

class ForgetPasswordViewForm extends StatefulWidget {
  const ForgetPasswordViewForm({super.key});

  @override
  State<ForgetPasswordViewForm> createState() => _ForgetPasswordViewFormState();
}

class _ForgetPasswordViewFormState extends State<ForgetPasswordViewForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: DataTextFormField(
            hint: 'Email',
            keyboardType: TextInputType.emailAddress,
            validator: (value, hint) {
              return emailValidator(value);
            },
            onSaved: (newValue) {
              context.read<ForgetPasswordCubit>().email = newValue;
            },
          ),
        ),
        SizedBox(height: 438.h),
        ForgetPasswordBlocConsumer(formKey: _formKey),
      ],
    );
  }
}
