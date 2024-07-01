import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'shoppingCart/presentation/manager/cart_provider.dart';

import '../core/utils/imports_manager.dart';

class PTCQuiz2 extends StatelessWidget {
  const PTCQuiz2({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartProvider>(
      create: (context) => CartProvider(),
      child: MaterialApp.router(
        title: StringsManager.appName,
        routerConfig: RoutesManager.goRouterConfig,
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.appTheme,
      ),
    );
  }
}
