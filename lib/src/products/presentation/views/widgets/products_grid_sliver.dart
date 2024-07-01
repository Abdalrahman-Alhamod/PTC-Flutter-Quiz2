import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'product_card.dart';

class ProductsGridSliver extends StatelessWidget {
  const ProductsGridSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        SizesManager.m20,
        0,
        SizesManager.m20,
        SizesManager.m20,
      ),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 165 / 200,
          crossAxisSpacing: SizesManager.m16,
          mainAxisSpacing: SizesManager.m24,
        ),
        itemCount: FakeDataManager.bigSmallFishesProducts.length,
        itemBuilder: (context, index) => ProductCard(
          product: FakeDataManager.bigSmallFishesProducts[index],
        ),
      ),
    );
  }
}
