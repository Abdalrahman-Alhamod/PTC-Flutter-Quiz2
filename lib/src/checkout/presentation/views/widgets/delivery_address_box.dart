import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../domain/entities/delivery_address.dart';

class DeliveryAddressBox extends StatelessWidget {
  const DeliveryAddressBox({
    super.key,
    required this.deliveryAddress,
    required this.isSelected,
    required this.onTap,
  });
  final bool isSelected;
  final DeliveryAddress deliveryAddress;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: SizesManager.s120,
        padding: const EdgeInsets.all(
          SizesManager.p20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            SizesManager.r12,
          ),
          border: Border.all(
            color:
                isSelected ? ColorsManager.secondary : ColorsManager.greyLight,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deliveryAddress.title,
                  style: TextStylesManager.Body2_Regular_14px,
                ),
                const Spacer(),
                SizedBox(
                  width: 270,
                  child: AutoSizeText(
                    deliveryAddress.description,
                    style: TextStylesManager.Body2_Semibold_14px,
                    maxLines: 2,
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                isSelected
                    ? IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          backgroundColor: ColorsManager.secondary,
                        ),
                        constraints: const BoxConstraints(
                          minHeight: SizesManager.s24,
                          minWidth: SizesManager.s24,
                        ),
                        padding: EdgeInsets.zero,
                        iconSize: SizesManager.s18,
                        icon: const Icon(
                          Icons.check,
                          color: ColorsManager.black,
                        ),
                      )
                    : const SizedBox(),
                const Spacer(),
                Text(
                  StringsManager.edit,
                  style: TextStylesManager.Label_Medium_12px.copyWith(
                    color: ColorsManager.primary,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
