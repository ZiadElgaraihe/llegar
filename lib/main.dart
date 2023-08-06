import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/user_model_cubit/user_model_cubit.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_routes.dart';
import 'package:llegar/core/utils/app_themes.dart';
import 'package:llegar/core/utils/service_locator.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserModelCubit>(
          create: (context) => getIt.get<UserModelCubit>(),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => getIt.get<SignUpCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'LLEGAR',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightMode,
        routes: AppRoutes.routes,
      ),
    );
  }
}
