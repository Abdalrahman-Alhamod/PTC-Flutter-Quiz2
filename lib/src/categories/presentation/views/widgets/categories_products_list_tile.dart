import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../home/domain/entities/product.dart';
import 'category_list_tile.dart';

class CategoriesProductsListTile extends StatefulWidget {
  const CategoriesProductsListTile({
    super.key,
  });

  @override
  State<CategoriesProductsListTile> createState() =>
      _CategoriesProductsListTileState();
}

class _CategoriesProductsListTileState
    extends State<CategoriesProductsListTile> {
  late final List<Product> _products;
  @override
  void initState() {
    _products = [
      Product(
        image: ImagesManager.delivery,
        description: StringsManager.freshFromSea,
        price: 36,
        name: StringsManager.bigSmallFishes,
      ),
      Product(
        image: ImagesManager.delivery,
        description: StringsManager.organic,
        price: 90,
        name: StringsManager.halalMeats,
      ),
      Product(
        image: ImagesManager.delivery,
        description: StringsManager.freshFromSea,
        price: 36,
        name: StringsManager.bigSmallFishes,
      ),
      Product(
        image: ImagesManager.delivery,
        description: StringsManager.organic,
        price: 90,
        name: StringsManager.halalMeats,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        SizesManager.m24,
        SizesManager.m4,
        SizesManager.m24,
        SizesManager.m18,
      ),
      sliver: SliverList.separated(
        itemCount: _products.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: SizesManager.m30,
        ),
        itemBuilder: (context, index) {
          return CategoryListTile(
            product: _products[index],
            index: index,
          );
        },
      ),
    );
  }
}
