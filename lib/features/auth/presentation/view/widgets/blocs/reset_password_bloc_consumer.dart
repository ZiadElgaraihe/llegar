import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/core/widgets/error_snack_bar.dart';
import 'package:llegar/core/widgets/loading_colored_button.dart';
import 'package:llegar/features/auth/presentation/view/successful_view.dart';
import 'package:llegar/features/auth/presentation/view_model/reset_passwordcubit/reset_password_cubit.dart';

class ResetPasswordBlocConsumer extends StatelessWidget {
  const ResetPasswordBlocConsumer({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, SuccessfulView.id, (route) => false,
              arguments: 'Reset Password Done');
        } else if (state is ResetPasswordFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            errorSnackBar(state.errMessage),
          );
        }
      },
      builder: (context, state) {
        if (state is ResetPasswordLoading) {
          return const LoadingColoredButton();
        } else {
          return ColoredButton(
            btnTitle: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                context.read<ResetPasswordCubit>().resetPassword();
              }
            },
          );
        }
      },
    );
  }
}
