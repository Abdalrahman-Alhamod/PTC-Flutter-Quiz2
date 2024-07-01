import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/imports_manager.dart';
import '../manager/cart_provider.dart';
import 'widgets/cart_bottom_sheet.dart';
import 'widgets/cart_product_list_tile.dart';
import 'widgets/shopping_cart_app_bar.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: const ShoppingCartAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          SizesManager.m24,
          SizesManager.m24,
          SizesManager.m24,
          250,
        ),
        child: ListView.builder(
          itemCount: cart.itemCount + 1,
          itemBuilder: (context, index) => index == cart.itemCount
              ? cart.itemCount != 0
                  ? const CartEditButton()
                  : Container()
              : CartProductListTile(
                  product: cart.items.values.toList()[index],
                ),
        ),
      ),
      bottomSheet: const CartBottomSheet(),
    );
  }
}

class CartEditButton extends StatelessWidget {
  const CartEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          StringsManager.edit,
        ),
      ),
    );
  }
}
