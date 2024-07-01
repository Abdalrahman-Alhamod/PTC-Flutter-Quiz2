import 'package:flutter/material.dart';
import 'widgets/order_app_bar.dart';

import 'widgets/current_orders_list_sliver.dart';
import 'widgets/filter_orders_list_sliver.dart';
import 'widgets/past_orders_list_sliver.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: OrdersAppBar(),
      body: CustomScrollView(
        slivers: [
          FilterOrdersListSliver(),
          CurrentOrdersListSliver(),
          PastOrdersListSliver(),
        ],
      ),
    );
  }
}
