import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/service_locator.dart';
import 'package:llegar/features/auth/data/services/reset_password_service.dart';
import 'package:llegar/features/auth/presentation/view/widgets/forget_password_view_body.dart';
import 'package:llegar/features/auth/presentation/view_model/forget_password_cubit/forget_password_cubit.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  static const String id = '/ForgetPasswordView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: BlocProvider<ForgetPasswordCubit>(
        create: (context) => ForgetPasswordCubit(
          resetPasswordService: getIt.get<ResetPasswordService>(),
        ),
        child: const Scaffold(
          body: ForgetPasswordViewBody(),
        ),
      ),
    );
  }
}
