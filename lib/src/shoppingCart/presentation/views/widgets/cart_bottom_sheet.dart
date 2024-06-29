import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: SizesManager.m8,
      ),
      child: Container(
        height: 240,
        padding: const EdgeInsets.symmetric(
          horizontal: SizesManager.p36,
          vertical: SizesManager.p18,
        ),
        decoration: const BoxDecoration(
          color: ColorsManager.greyLight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              SizesManager.r30,
            ),
            topRight: Radius.circular(
              SizesManager.r30,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringsManager.subtotal,
                      style: TextStylesManager.Body2_Regular_14px.copyWith(
                        color: ColorsManager.blueGrey,
                      ),
                    ),
                    const SizedBox(
                      height: SizesManager.s12,
                    ),
                    Text(
                      StringsManager.delivery,
                      style: TextStylesManager.Body2_Regular_14px.copyWith(
                        color: ColorsManager.blueGrey,
                      ),
                    ),
                    const SizedBox(
                      height: SizesManager.s16,
                    ),
                    Text(
                      StringsManager.total,
                      style: TextStylesManager.Body2_Regular_14px.copyWith(
                        color: ColorsManager.blueGrey,
                      ),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$35.96',
                      style: TextStylesManager.Body2_Semibold_14px,
                    ),
                    SizedBox(
                      height: SizesManager.s12,
                    ),
                    Text(
                      '\$2.0',
                      style: TextStylesManager.Body2_Semibold_14px,
                    ),
                    SizedBox(
                      height: SizesManager.s16,
                    ),
                    Text(
                      '\$37.96',
                      style: TextStylesManager.Body2_Semibold_14px,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                  double.infinity,
                  70,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    SizesManager.r20,
                  ),
                ),
                backgroundColor: ColorsManager.primary,
                foregroundColor: ColorsManager.white,
              ),
              onPressed: () {},
              child: Text(
                StringsManager.proceedToCheckout,
                style: TextStylesManager.Body2_Semibold_14px.copyWith(
                  color: ColorsManager.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
