import 'package:flutter/material.dart';

import '../utils/imports_manager.dart';

class RounderdconButton extends StatelessWidget {
  const RounderdconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: ColorsManager.greyLight,
      ),
      constraints: const BoxConstraints(
        minHeight: SizesManager.s40,
        minWidth: SizesManager.s40,
      ),
      padding: EdgeInsets.zero,
      iconSize: SizesManager.s18,
      icon: Icon(
        icon,
        color: ColorsManager.black,
      ),
    );
  }
}
