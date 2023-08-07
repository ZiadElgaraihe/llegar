import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/core/widgets/error_snack_bar.dart';
import 'package:llegar/core/widgets/loading_colored_button.dart';
import 'package:llegar/features/auth/presentation/view/verify_sign_up_view.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

class SignUpBlocConsumer extends StatelessWidget {
  const SignUpBlocConsumer({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          Navigator.pushNamed(context, VerifySignUpView.id);
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            errorSnackBar(state.errMessage),
          );
        }
      },
      builder: (context, state) {
        if (state is SignUpLoading) {
          return const LoadingColoredButton();
        } else {
          return ColoredButton(
            btnTitle: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                context.read<SignUpCubit>().signUp();
              }
            },
          );
        }
      },
    );
  }
}
