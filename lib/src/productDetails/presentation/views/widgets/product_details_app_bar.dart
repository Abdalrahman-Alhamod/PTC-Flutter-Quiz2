import 'package:flutter/material.dart';
import '../../../../../core/widgets/back_arrow_icon_button.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../home/domain/entities/product.dart';
import '../../../../shoppingCart/presentation/views/widgets/cart_icon_button.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SizesManager.m24),
      child: Row(
        children: [
          const BackArrowIconButon(),
          const SizedBox(
            width: SizesManager.s20,
          ),
          Text(
            product.name,
            style: TextStylesManager.Body1_Regular_16px,
          ),
          const Spacer(),
          const CartIconButton(
            color: ColorsManager.black,
          ),
        ],
      ),
    );
  }
}
