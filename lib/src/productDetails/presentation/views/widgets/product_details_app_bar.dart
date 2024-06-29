import 'package:flutter/material.dart';
import '../../../../../core/widgets/back_arrow_icon_button.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../shoppingCart/presentation/views/widgets/cart_icon_button.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(SizesManager.m24),
      child: Row(
        children: [
          BackArrowIconButon(),
          SizedBox(
            width: SizesManager.s20,
          ),
          Text(
            StringsManager.orange,
            style: TextStylesManager.Body1_Regular_16px,
          ),
          Spacer(),
          CartIconButton(
            color: ColorsManager.black,
          ),
        ],
      ),
    );
  }
}
