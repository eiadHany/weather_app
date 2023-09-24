import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/core/utils/app_colors.dart';

import 'package:weather/core/utils/app_routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const Weather());
}

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme:
          ThemeData(scaffoldBackgroundColor: AppColors.scaffoldBackGroundColor),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}
