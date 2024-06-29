
import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(
              165,
              60,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                SizesManager.r20,
              ),
              side: const BorderSide(
                color: ColorsManager.primary,
              ),
            ),
            backgroundColor: ColorsManager.greyLight,
            shadowColor: ColorsManager.greyLight,
          ),
          onPressed: () {},
          child: Text(
            StringsManager.addCard,
            style:
                TextStylesManager.Body2_Semibold_14px.copyWith(
              color: ColorsManager.primary,
            ),
          ),
        ),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(
              165,
              60,
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
            StringsManager.buyNow,
            style:
                TextStylesManager.Body2_Semibold_14px.copyWith(
              color: ColorsManager.white,
            ),
          ),
        ),
      ],
    );
  }
}
