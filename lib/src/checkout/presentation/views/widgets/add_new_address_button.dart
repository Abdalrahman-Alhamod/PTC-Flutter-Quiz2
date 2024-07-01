import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class AddNewAddressButton extends StatelessWidget {
  const AddNewAddressButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          color: ColorsManager.secondary,
          icon: const Icon(
            Icons.add_circle_outline,
          ),
        ),
        const Text(
          StringsManager.addNewAddress,
          style: TextStylesManager.Body2_Medium_14px,
        )
      ],
    );
  }
}
