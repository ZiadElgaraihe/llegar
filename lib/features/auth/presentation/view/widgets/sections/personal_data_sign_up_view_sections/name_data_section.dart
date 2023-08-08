import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/features/auth/validators/validators.dart';
import 'package:llegar/features/auth/presentation/view/widgets/text_fields/data_text_form_field.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

class NameDataSection extends StatelessWidget {
  const NameDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        DataTextFormField(
          hint: 'Full Name',
          keyboardType: TextInputType.name,
          validator: Validators.nameValidator,
          onSaved: (newValue) {
            context.read<SignUpCubit>().fullName = newValue;
          },
        ),
        SizedBox(height: 16.h),
        DataTextFormField(
          hint: 'User Name',
          keyboardType: TextInputType.name,
          validator: Validators.nameValidator,
          onSaved: (newValue) {
            context.read<SignUpCubit>().userName = newValue;
          },
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
