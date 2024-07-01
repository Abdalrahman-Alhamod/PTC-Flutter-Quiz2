import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../home/domain/entities/product.dart';
import 'cart_product_counter.dart';

class CartProductListTile extends StatelessWidget {
  const CartProductListTile({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  product.image,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  width: SizesManager.m20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      width: 130,
                      child: AutoSizeText(
                        product.name,
                        maxLines: 2,
                        style: TextStylesManager.Body2_Medium_14px,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '\$${product.price}',
                      style: TextStylesManager.Body2_Regular_14px,
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                  ],
                ),
                const Spacer(),
                CartProductCounter(
                  product: product,
                ),
              ],
            ),
          ),
          const Divider(
            height: SizesManager.s10,
            color: ColorsManager.grey,
          )
        ],
      ),
    );
  }
}
