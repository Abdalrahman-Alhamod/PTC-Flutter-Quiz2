import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../domain/entities/product.dart';
import 'add_to_cart_button.dart';

class RecommendProductCard extends StatelessWidget {
  const RecommendProductCard({
    super.key,
    required this.isLast,
    required this.product,
  });
  final bool isLast;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).pushNamed(
        AppRoutes.productsDetails.name,
        extra: product,
      ),
      child: Container(
        margin: !isLast
            ? const EdgeInsets.only(left: SizesManager.m20)
            : const EdgeInsets.symmetric(
                horizontal: SizesManager.m20,
              ),
        padding: const EdgeInsets.all(SizesManager.p10),
        width: 130,
        decoration: BoxDecoration(
          color: ColorsManager.greyLight,
          borderRadius: BorderRadius.circular(
            SizesManager.r12,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                product.image,
                width: SizesManager.s80,
                height: SizesManager.s80,
              ),
            ),
            const Divider(
              color: ColorsManager.greyDark,
              height: 0.5,
              thickness: 0.5,
            ),
            Text(
              product.name,
              style: TextStylesManager.Body2_Semibold_14px,
            ),
            Text(
              product.description ?? '',
              style: TextStylesManager.Label_Regular_12px.copyWith(
                color: ColorsManager.greyDark,
              ),
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  width: 110,
                  height: 24,
                  padding: const EdgeInsets.symmetric(
                    horizontal: SizesManager.p12,
                    vertical: SizesManager.p4,
                  ),
                  decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: BorderRadius.circular(
                      SizesManager.r12,
                    ),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${StringsManager.unit}   ',
                          style: TextStylesManager.Label_Regular_12px.copyWith(
                            color: ColorsManager.greyDark,
                          ),
                        ),
                        TextSpan(
                          text: '\$${product.price}',
                          style: TextStylesManager.Label_Medium_12px.copyWith(
                            fontWeight: FontWeightManager.semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                 AddToCartButton(product: product,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
