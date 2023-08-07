import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/core/widgets/error_snack_bar.dart';
import 'package:llegar/core/widgets/loading_colored_button.dart';
import 'package:llegar/features/auth/presentation/view/forget_password_verification_code_view.dart';
import 'package:llegar/features/auth/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';

class ForgetPasswordBlocConsumer extends StatelessWidget {
  const ForgetPasswordBlocConsumer({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordSuccess) {
          Navigator.pushNamed(
            context,
            ForgetPasswordVerificationCodeView.id,
          );
        } else if (state is ForgetPasswordFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            errorSnackBar(state.errMessage),
          );
        }
      },
      builder: (context, state) {
        if (state is ForgetPasswordLoading) {
          return const LoadingColoredButton();
        } else {
          return ColoredButton(
            btnTitle: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                context.read<ForgetPasswordCubit>().forgetPassword();
              }
            },
          );
        }
      },
    );
  }
}