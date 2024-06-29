import 'package:flutter/material.dart';
import 'widgets/filter_categories_list_sliver.dart';
import 'widgets/products_grid_sliver.dart';

import 'widgets/products_app_bar.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          ProductsAppBarSliver(),
          FilterCategoriesListSliver(),
          ProductsGridSliver(),
        ],
      ),
    );
  }
}
