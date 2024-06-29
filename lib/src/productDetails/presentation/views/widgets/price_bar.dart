import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class PriceBar extends StatelessWidget {
  const PriceBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '\$35',
                style: TextStylesManager.Body1_Bold_16px.copyWith(
                  color: ColorsManager.primary,
                ),
              ),
              TextSpan(
                text: '/${StringsManager.kG}',
                style: TextStylesManager.Body1_Regular_16px.copyWith(
                  color: ColorsManager.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: SizesManager.s14,
        ),
        Container(
          height: SizesManager.s24,
          padding: const EdgeInsets.symmetric(
            horizontal: SizesManager.p10,
            vertical: SizesManager.p2,
          ),
          decoration: BoxDecoration(
            color: ColorsManager.primary,
            borderRadius: BorderRadius.circular(
              SizesManager.r30,
            ),
          ),
          child: Text(
            '\$22.05 ${StringsManager.off}',
            style: TextStylesManager.Label_Regular_12px.copyWith(
              color: ColorsManager.white,
            ),
          ),
        ),
        const Spacer(),
        Text(
          '${StringsManager.reg}: \$56.70 ${StringsManager.usd}',
          style: TextStylesManager.Body2_Regular_14px.copyWith(
            color: ColorsManager.greyDark,
          ),
        ),
      ],
    );
  }
}
