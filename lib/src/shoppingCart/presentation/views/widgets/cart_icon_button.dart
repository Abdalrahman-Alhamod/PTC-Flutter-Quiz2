import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../manager/cart_provider.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
    this.color,
  });
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pushNamed(AppRoutes.shoppingCart.name);
      },
      icon: Badge.count(
        count: cart.itemCount,
        backgroundColor: ColorsManager.secondary,
        child: SvgPicture.asset(
          SVGsManager.cart,
          width: SizesManager.s24,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color!,
                  BlendMode.srcIn,
                )
              : null,
        ),
      ),
    );
  }
}
