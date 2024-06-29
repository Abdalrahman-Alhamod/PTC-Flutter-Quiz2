import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/imports_manager.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
    this.color,
  });
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pushNamed(AppRoutes.shoppingCart.name);
      },
      icon: Badge.count(
        count: 3,
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
