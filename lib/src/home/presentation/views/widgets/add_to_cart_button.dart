import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../shoppingCart/presentation/manager/cart_provider.dart';
import '../../../domain/entities/product.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key, required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return SizedBox.square(
      dimension: SizesManager.s24,
      child: IconButton(
        onPressed: () => cart.addItem(product),
        style: IconButton.styleFrom(
          backgroundColor: ColorsManager.primary,
        ),
        constraints: const BoxConstraints(
          minHeight: SizesManager.s24,
          minWidth: SizesManager.s24,
        ),
        padding: EdgeInsets.zero,
        iconSize: SizesManager.s12,
        icon: const Icon(
          Icons.add,
          color: ColorsManager.white,
        ),
      ),
    );
  }
}
