import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'order_list_tile.dart';

class PastOrdersListSliver extends StatelessWidget {
  const PastOrdersListSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        SizesManager.m24,
        SizesManager.m4,
        SizesManager.m24,
        SizesManager.m18,
      ),
      sliver: SliverList.separated(
        itemCount: FakeDataManager.pastOrders.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: SizesManager.m30,
        ),
        itemBuilder: (context, index) {
          return OrderListTile(
            order: FakeDataManager.pastOrders[index],
          );
        },
      ),
    );
  }
}
