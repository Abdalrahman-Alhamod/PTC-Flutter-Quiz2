import 'package:flutter/material.dart';

import '../../../../core/utils/imports_manager.dart';
import 'widgets/cart_bottom_sheet.dart';
import 'widgets/cart_product_list_tile.dart';
import 'widgets/shopping_cart_app_bar.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    int length = 3;
    return Scaffold(
      appBar: const ShoppingCartAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          SizesManager.m24,
          SizesManager.m24,
          SizesManager.m24,
          240,
        ),
        child: ListView.builder(
          itemCount: length + 1,
          itemBuilder: (context, index) => index == length
              ? const CartEditButton()
              : const CartProductListTile(),
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
