import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/core/utils/app_config.dart';
import 'package:llegar/core/utils/app_routes.dart';
import 'package:llegar/core/utils/app_themes.dart';

void main() {
  runApp(const Llegar());
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightMode,
      routes: AppRoutes.routes,
    );
  }
}
