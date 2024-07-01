import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class CartEditButton extends StatelessWidget {
  const CartEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          StringsManager.edit,
        ),
      ),
    );
  }
}
