import 'package:get_it/get_it.dart';
import 'package:llegar/core/app_cubit/app_cubit.dart';
import 'package:llegar/core/helpers/dio_helper.dart';
import 'package:llegar/features/auth/data/services/log_in_service.dart';
import 'package:llegar/features/auth/data/services/reset_password_service.dart';
import 'package:llegar/features/auth/data/services/sign_up_service.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  //dio helper
  getIt.registerSingleton<DioHelper>(
    DioHelper(),
  );
  //log in service
  getIt.registerSingleton<LogInService>(
    LogInService(
      dioHelper: getIt.get<DioHelper>(),
    ),
  );
  //sign up service
  getIt.registerSingleton<SignUpService>(
    SignUpService(
      dioHelper: getIt.get<DioHelper>(),
    ),
  );
  //reset password service
  getIt.registerSingleton<ResetPasswordService>(
    ResetPasswordService(
      dioHelper: getIt.get<DioHelper>(),
    ),
  );
  //app cubit
  getIt.registerSingleton<AppCubit>(
    AppCubit(),
  );
}
