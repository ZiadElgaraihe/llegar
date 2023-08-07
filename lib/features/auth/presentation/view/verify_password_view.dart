import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/app_cubit/app_cubit.dart';
import 'package:llegar/core/utils/service_locator.dart';
import 'package:llegar/features/auth/data/services/reset_password_service.dart';
import 'package:llegar/features/auth/presentation/view/widgets/verify_password_view_body.dart';
import 'package:llegar/features/auth/presentation/view_model/verify_password_cubit/verify_password_cubit.dart';

class VerifyPasswordView extends StatelessWidget {
  const VerifyPasswordView({super.key});

  static const String id = '/VerifyPasswordView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: BlocProvider<VerifyPasswordCubit>(
        create: (context) => VerifyPasswordCubit(
          resetPasswordService: getIt.get<ResetPasswordService>(),
          appCubit: getIt.get<AppCubit>(),
        ),
        child: const Scaffold(
          body: VerifyPasswordViewBody(),
        ),
      ),
    );
  }
}
