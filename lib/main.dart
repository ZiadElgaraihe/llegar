import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_routes.dart';
import 'package:llegar/core/utils/app_themes.dart';
import 'package:llegar/core/utils/service_locator.dart';
import 'package:llegar/features/auth/data/services/log_in_service.dart';
import 'package:llegar/features/auth/presentation/view_model/log_in_cubit/log_in_cubit.dart';

void main() {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  //prevent app from being oriented
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      const Llegar(),
    );
  });
}

class Llegar extends StatelessWidget {
  const Llegar({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfig.sizeData = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),
    );
    return BlocProvider<LogInCubit>(
      create: (context) => LogInCubit(
        logInService: getIt.get<LogInService>(),
      ),
      child: MaterialApp(
        title: 'LLEGAR',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightMode,
        routes: AppRoutes.routes,
      ),
    );
  }
}
