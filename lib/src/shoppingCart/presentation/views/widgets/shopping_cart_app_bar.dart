import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../../core/widgets/back_arrow_icon_button.dart';
import '../../manager/cart_provider.dart';

class ShoppingCartAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ShoppingCartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(SizesManager.m24),
      child: Row(
        children: [
          const BackArrowIconButon(),
          const SizedBox(
            width: SizesManager.s20,
          ),
          Text(
            '${StringsManager.shoppingCart}(${cart.itemCount})',
            style: TextStylesManager.Body1_Regular_16px,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(SizesManager.s100);
}
