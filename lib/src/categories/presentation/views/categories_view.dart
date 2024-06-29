import 'package:flutter/material.dart';

import 'widgets/categories_app_bar_sliver.dart';
import 'widgets/categories_grid_sliver.dart';
import 'widgets/categories_list_sliver.dart';
import 'widgets/categories_products_list_tile.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CategoriesSliverAppBar(),
          CategoriesGridSliver(),
          CategoriesListSliver(),
          CategoriesProductsListTile(),
        ],
      ),
    );
  }
}
