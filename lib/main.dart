import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/app_cubit/app_cubit.dart';
import 'package:llegar/core/utils/app_colors.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_routes.dart';
import 'package:llegar/core/utils/app_themes.dart';
import 'package:llegar/core/utils/service_locator.dart';
import 'package:llegar/features/auth/data/services/sign_up_service.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';
import 'package:llegar/features/navbar/presentation/view/navigation_view.dart';

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
        statusBarColor: AppColors.kTransparent,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
          create: (context) => getIt.get<AppCubit>(),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => SignUpCubit(
            signUpService: getIt.get<SignUpService>(),
            appCubit: getIt.get<AppCubit>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'LLEGAR',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightMode,
        routes: AppRoutes.routes,
        initialRoute: NavigationView.id,
      ),
    );
  }
}
