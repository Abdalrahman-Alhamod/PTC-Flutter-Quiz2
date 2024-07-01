import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'filter_orders_box.dart';

class FilterOrdersListSliver extends StatefulWidget {
  const FilterOrdersListSliver({
    super.key,
  });

  @override
  State<FilterOrdersListSliver> createState() => _FilterOrdersListSliverState();
}

class _FilterOrdersListSliverState extends State<FilterOrdersListSliver> {
  late int _currentIndex;
  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        0,
        SizesManager.m4,
        0,
        SizesManager.m18,
      ),
      sliver: SliverToBoxAdapter(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 44,
          ),
          child: ListView.builder(
            itemCount: FakeDataManager.filterOrders.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return FilterOrdersBox(
                title: FakeDataManager.filterOrders[index],
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                isSelected: _currentIndex == index,
                isLast: index == FakeDataManager.filterOrders.length - 1,
              );
            },
          ),
        ),
      ),
    );
  }
}
