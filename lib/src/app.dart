import 'package:flutter/material.dart';
import 'package:ptc_quiz2/core/constants/strings_manager.dart';
import 'package:ptc_quiz2/core/routes/routes_manager.dart';
import 'package:ptc_quiz2/core/theme/theme_manager.dart';

class PTCQuiz2 extends StatelessWidget {
  const PTCQuiz2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: StringsManager.appName,
      routerConfig: RoutesManager.goRouterConfig,
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.appTheme,
    );
  }
}
