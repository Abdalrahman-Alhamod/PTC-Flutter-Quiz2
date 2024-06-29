import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: SizesManager.s24,
      child: IconButton(
        onPressed: () {},
        style: IconButton.styleFrom(
          backgroundColor: ColorsManager.primary,
        ),
        constraints: const BoxConstraints(
          minHeight: SizesManager.s24,
          minWidth: SizesManager.s24,
        ),
        padding: EdgeInsets.zero,
        iconSize: SizesManager.s12,
        icon: const Icon(
          Icons.add,
          color: ColorsManager.white,
        ),
      ),
    );
  }
}
