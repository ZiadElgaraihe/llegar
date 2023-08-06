import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/phone_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

class PhoneNumberSection extends StatelessWidget {
  const PhoneNumberSection({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 40.h),
          PhoneTextFormField(
            onSaved: (newValue) {
              context.read<SignUpCubit>().phoneNumber = newValue;
            },
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
