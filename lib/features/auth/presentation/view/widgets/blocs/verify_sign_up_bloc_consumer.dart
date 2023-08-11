import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/widgets/default_button.dart';
import 'package:llegar/core/widgets/error_snack_bar.dart';
import 'package:llegar/core/widgets/loading_button.dart';
import 'package:llegar/features/auth/presentation/view/successful_view.dart';
import 'package:llegar/features/auth/presentation/view_model/verify_sign_up_cubit/verify_sign_up_cubit.dart';

class VerifySignUpBlocConsumer extends StatelessWidget {
  const VerifySignUpBlocConsumer({
    super.key,
    required List<TextEditingController> resetCodeControllers,
  }) : _resetCodeControllers = resetCodeControllers;

  final List<TextEditingController> _resetCodeControllers;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifySignUpCubit, VerifySignUpState>(
      listener: (context, state) {
        if (state is VerifySignUpSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, SuccessfulView.id, (route) => false,
              arguments: 'Successful Sign Up');
        } else if (state is VerifySignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            errorSnackBar(state.errMessage),
          );
        }
      },
      builder: (context, state) {
        if (state is VerifySignUpLoading) {
          return const LoadingButton();
        } else {
          return DefaultButton(
            btnTitle: 'Continue',
            onPressed: () {
              String resetCode = '';
              for (var element in _resetCodeControllers) {
                resetCode += element.text;
              }
              context.read<VerifySignUpCubit>().resetCode = resetCode;
              context.read<VerifySignUpCubit>().verifySignUp();
            },
          );
        }
      },
    );
  }
}
