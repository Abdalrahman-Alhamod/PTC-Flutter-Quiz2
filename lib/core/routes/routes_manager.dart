import 'package:go_router/go_router.dart';
import 'package:ptc_quiz2/src/splash/views/splash_view.dart';

enum AppRoutes {
  splash,
  onboarding,
  home,
  categories,
  products,
  productsDetails,
  shoppingCart,
  checkout,
  addNewCard,
  orders,
}

final Map<AppRoutes, dynamic> routes = {
  // AppRoutes.splash: (context, state) => const SplashView(),
};

abstract final class RoutesManager {
  RoutesManager._();
  static final goRouterConfig = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoutes.splash.name,
        builder: (context, state) => const SplashView(),
        routes: routes.entries
            .map(
              (entry) => GoRoute(
                path: entry.key.name,
                name: entry.key.name,
                builder: (context, state) {
                  return entry.value(context, state);
                },
              ),
            )
            .toList(),
      ),
    ],
  );
}
