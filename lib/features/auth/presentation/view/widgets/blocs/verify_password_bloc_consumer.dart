import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/core/widgets/error_snack_bar.dart';
import 'package:llegar/core/widgets/loading_colored_button.dart';
import 'package:llegar/features/auth/presentation/view/reset_password_view.dart';
import 'package:llegar/features/auth/presentation/view_model/verify_password_cubit/verify_password_cubit.dart';

class VerifyPasswordBlocConsumer extends StatelessWidget {
  const VerifyPasswordBlocConsumer({
    super.key,
    required List<TextEditingController> resetCodeControllers,
  }) : _resetCodeControllers = resetCodeControllers;

  final List<TextEditingController> _resetCodeControllers;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyPasswordCubit, VerifyPasswordState>(
      listener: (context, state) {
        if (state is VerifyPasswordSuccess) {
          Navigator.pushNamed(context, ResetPasswordView.id);
        } else if (state is VerifyPasswordFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            errorSnackBar(state.errMessage),
          );
        }
      },
      builder: (context, state) {
        if (state is VerifyPasswordLoading) {
          return const LoadingColoredButton();
        } else {
          return ColoredButton(
            btnTitle: 'Continue',
            onPressed: () {
              String resetCode = '';
              for (var element in _resetCodeControllers) {
                resetCode += element.text;
              }
              context.read<VerifyPasswordCubit>().resetCode = resetCode;
              context.read<VerifyPasswordCubit>().verifPassword();
            },
          );
        }
      },
    );
  }
}
