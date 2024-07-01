import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../../core/widgets/back_arrow_icon_button.dart';

class OrdersAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OrdersAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(SizesManager.m24),
      child: Row(
        children: [
          BackArrowIconButon(),
          SizedBox(
            width: SizesManager.s20,
          ),
          Text(
            StringsManager.orders,
            style: TextStylesManager.Body1_Regular_16px,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(SizesManager.s100);
}
