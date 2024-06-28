import 'package:go_router/go_router.dart';
import 'package:ptc_quiz2/src/home/presentation/views/home_view.dart';
import 'package:ptc_quiz2/src/onboarding/presentation/views/onboarding_view.dart';

enum AppRoutes {
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
  AppRoutes.home: (context, state) => const HomeView(),
};

abstract final class RoutesManager {
  RoutesManager._();
  static final goRouterConfig = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoutes.onboarding.name,
        builder: (context, state) => const OnboardingView(),
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
