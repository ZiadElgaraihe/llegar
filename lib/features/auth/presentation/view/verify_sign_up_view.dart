import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/user_model_cubit/user_model_cubit.dart';
import 'package:llegar/core/utils/service_locator.dart';
import 'package:llegar/features/auth/data/services/sign_up_service.dart';
import 'package:llegar/features/auth/presentation/view/widgets/verify_sign_up_view_body.dart';
import 'package:llegar/features/auth/presentation/view_model/verify_sign_up_cubit/verify_sign_up_cubit.dart';

class VerifySignUpView extends StatelessWidget {
  const VerifySignUpView({super.key});

  static const String id = '/VerifySignUpView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: BlocProvider<VerifySignUpCubit>(
        create: (context) => VerifySignUpCubit(
          signUpService: getIt.get<SignUpService>(),
          userModelCubit: getIt.get<UserModelCubit>(),
        ),
        child: const Scaffold(
          body: VerifySignUpViewBody(),
        ),
      ),
    );
  }
}
