import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/app_cubit/app_cubit.dart';
import 'package:llegar/core/utils/service_locator.dart';
import 'package:llegar/features/auth/data/services/log_in_service.dart';
import 'package:llegar/features/auth/presentation/view/widgets/log_in_view_body.dart';
import 'package:llegar/features/auth/presentation/view_model/log_in_cubit/log_in_cubit.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  static const String id = '/LogInView';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: BlocProvider<LogInCubit>(
        create: (context) => LogInCubit(
          logInService: getIt.get<LogInService>(),
          appCubit: getIt.get<AppCubit>(),
        ),
        child: const Scaffold(
          body: LogInViewBody(),
        ),
      ),
    );
  }
}
