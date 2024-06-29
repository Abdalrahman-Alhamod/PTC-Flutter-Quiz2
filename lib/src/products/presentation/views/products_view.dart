import 'package:flutter/material.dart';
import 'package:ptc_quiz2/src/products/presentation/views/widgets/filter_categories_list_sliver.dart';
import 'package:ptc_quiz2/src/products/presentation/views/widgets/products_grid_sliver.dart';

import 'widgets/product_app_bar.dart';

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
