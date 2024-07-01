import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../home/domain/entities/product.dart';
import '../../../../home/presentation/views/widgets/add_to_cart_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).pushNamed(
        AppRoutes.productsDetails.name,
        extra: product,
      ),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: ColorsManager.greyLight,
          borderRadius: BorderRadius.circular(
            SizesManager.r12,
          ),
        ),
        padding: const EdgeInsets.all(SizesManager.p18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                product.image,
                height: SizesManager.s80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: SizesManager.s6,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: AddToCartButton(
                product: product,
              ),
            ),
            const Spacer(),
            Text(
              '\$${product.price}',
              style: TextStylesManager.Body2_Semibold_14px,
            ),
            Text(
              product.name,
              style: TextStylesManager.Label_Regular_12px.copyWith(
                color: ColorsManager.blueGreyLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
