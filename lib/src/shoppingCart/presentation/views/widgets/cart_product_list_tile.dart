import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'cart_product_counter.dart';

class CartProductListTile extends StatelessWidget {
  const CartProductListTile({
    super.key,
  });

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
                  ImagesManager.delivery,
                  width: 100,
                  height: 100,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      StringsManager.bananas,
                      style: TextStylesManager.Body2_Medium_14px,
                    ),
                    Spacer(),
                    Text(
                      '\$36.06',
                      style: TextStylesManager.Body2_Regular_14px,
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
                const Spacer(),
                const CartProductCounter(),
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
