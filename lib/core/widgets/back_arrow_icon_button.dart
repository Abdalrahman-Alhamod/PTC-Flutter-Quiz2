import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'rounder_icon_button.dart';

class BackArrowIconButon extends StatelessWidget {
  const BackArrowIconButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RounderdconButton(
      icon: Icons.navigate_before,
      onPressed: () => GoRouter.of(context).pop(),
    );
  }
}
