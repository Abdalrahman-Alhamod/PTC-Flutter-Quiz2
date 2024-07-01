import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'recommended_product_card.dart';

class RecommendedListSliver extends StatelessWidget {
  const RecommendedListSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        0,
        SizesManager.m4,
        0,
        SizesManager.m18,
      ),
      sliver: SliverToBoxAdapter(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 190,
          ),
          child: ListView.builder(
            itemCount: FakeDataManager.products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return RecommendProductCard(
                isLast: index == FakeDataManager.products.length - 1,
                product: FakeDataManager.products[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
