
import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../../core/widgets/rounder_icon_button.dart';

class CartProductCounter extends StatefulWidget {
  const CartProductCounter({
    super.key,
  });

  @override
  State<CartProductCounter> createState() => _CartProductCounterState();
}

class _CartProductCounterState extends State<CartProductCounter> {
  late int _count;
  @override
  void initState() {
    _count = 2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RounderdconButton(
          icon: Icons.remove,
          onPressed: () {
            setState(() {
              if (_count > 1) {
                _count--;
              }
            });
          },
        ),
        const SizedBox(
          width: SizesManager.s10,
        ),
        Text(
          _count.toString(),
          style: TextStylesManager.Body2_Medium_14px,
        ),
        const SizedBox(
          width: SizesManager.s10,
        ),
        RounderdconButton(
          icon: Icons.add,
          onPressed: () {
            setState(() {
              _count++;
            });
          },
        ),
      ],
    );
  }
}
