part of '../utils/imports_manager.dart';

enum AppRoutes {
  onboarding,
  bottomBar,
  products,
  productsDetails,
  shoppingCart,
  checkout,
  addNewCard,
  orders,
}

final Map<AppRoutes, dynamic> routes = {
  AppRoutes.bottomBar: (context, state) => const BottomNavBarView(),
  AppRoutes.products: (context, state) => const ProductsView(),
  AppRoutes.productsDetails: (context, state) {
    final product = state.extra as Product;
    return ProductDetailsView(
      product: product,
    );
  },
  AppRoutes.shoppingCart: (context, state) => const ShoppingCartView(),
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
