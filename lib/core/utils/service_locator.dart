import 'package:get_it/get_it.dart';
import 'package:llegar/core/user_model_cubit/user_model_cubit.dart';
import 'package:llegar/core/utils/helpers/dio_helper.dart';
import 'package:llegar/features/auth/data/services/log_in_service.dart';
import 'package:llegar/features/auth/data/services/sign_up_service.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<DioHelper>(
    DioHelper(),
  );
  getIt.registerSingleton<LogInService>(
    LogInService(
      dioHelper: getIt.get<DioHelper>(),
    ),
  );
  getIt.registerSingleton<SignUpService>(
    SignUpService(
      dioHelper: getIt.get<DioHelper>(),
    ),
  );
  getIt.registerSingleton<UserModelCubit>(
    UserModelCubit(),
  );
}
