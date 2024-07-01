import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../../core/widgets/rounder_icon_button.dart';
import '../../../../home/domain/entities/product.dart';
import '../../manager/cart_provider.dart';

class CartProductCounter extends StatelessWidget {
  const CartProductCounter({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Row(
      children: [
        RounderdconButton(
          icon: Icons.remove,
          onPressed: () {
            cart.decreaseQuantity(product);
          },
        ),
        const SizedBox(
          width: SizesManager.s10,
        ),
        Text(
          product.quantity.toString(),
          style: TextStylesManager.Body2_Medium_14px,
        ),
        const SizedBox(
          width: SizesManager.s10,
        ),
        RounderdconButton(
          icon: Icons.add,
          onPressed: () {
            cart.increaseQuantity(product);
          },
        ),
      ],
    );
  }
}
