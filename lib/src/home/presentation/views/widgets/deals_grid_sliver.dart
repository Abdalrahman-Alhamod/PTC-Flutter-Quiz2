import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'deals_product_card.dart';

class DealsGridSliver extends StatelessWidget {
  const DealsGridSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        SizesManager.p20,
        0,
        SizesManager.p20,
        SizesManager.p20,
      ),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 165 / 200,
          crossAxisSpacing: SizesManager.m12,
          mainAxisSpacing: SizesManager.m12,
        ),
        itemCount: FakeDataManager.deals.length,
        itemBuilder: (context, index) => Container(
          width: 200,
          decoration: BoxDecoration(
            color: ColorsManager.greyLight,
            borderRadius: BorderRadius.circular(
              SizesManager.r12,
            ),
          ),
          padding: const EdgeInsets.all(SizesManager.p18),
          child: DealsProductCard(product: FakeDataManager.deals[index]),
        ),
      ),
    );
  }
}
