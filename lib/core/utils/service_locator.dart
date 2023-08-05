import 'package:get_it/get_it.dart';
import 'package:llegar/core/utils/helpers/dio_helper.dart';
import 'package:llegar/features/auth/data/services/log_in_service.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<LogInService>(
    LogInService(
      dioHelper: getIt.get<DioHelper>(),
    ),
  );
  getIt.registerSingleton<DioHelper>(DioHelper(),);
}
