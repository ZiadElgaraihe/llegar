import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/widgets/colored_button.dart';
import 'package:llegar/core/widgets/error_snack_bar.dart';
import 'package:llegar/core/widgets/loading_colored_button.dart';
import 'package:llegar/features/auth/presentation/view_model/log_in_cubit/log_in_cubit.dart';
import 'package:llegar/features/home/presentation/view/home_view.dart';

class LogInBlocConsumer extends StatelessWidget {
  const LogInBlocConsumer({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInSuccess) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            HomeView.id,
            (route) => false,
          );
        } else if (state is LogInFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            errorSnackBar(state.errMessage),
          );
        }
      },
      builder: (context, state) {
        if (state is LogInLoading) {
          return const LoadingColoredButton();
        } else {
          return ColoredButton(
            btnTitle: 'Sign in',
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                context.read<LogInCubit>().logIn();
              }
            },
          );
        }
      },
    );
  }
}
