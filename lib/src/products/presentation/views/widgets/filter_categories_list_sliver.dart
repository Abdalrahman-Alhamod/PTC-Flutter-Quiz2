import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../categories/presentation/views/widgets/category_box.dart';

class FilterCategoriesListSliver extends StatefulWidget {
  const FilterCategoriesListSliver({
    super.key,
  });

  @override
  State<FilterCategoriesListSliver> createState() =>
      _FilterCategoriesListSliverState();
}

class _FilterCategoriesListSliverState
    extends State<FilterCategoriesListSliver> {
  late int _currentIndex;
  late final List<String> _categories;
  @override
  void initState() {
    _currentIndex = 0;
    _categories = [
      StringsManager.popular,
      StringsManager.lowPrice,
      StringsManager.smallFishes,
      StringsManager.big,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        0,
        0,
        0,
        SizesManager.m18,
      ),
      sliver: SliverToBoxAdapter(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 36,
          ),
          child: ListView.builder(
            itemCount: _categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoryBox(
                title: _categories[index],
                index: index,
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                isSelected: _currentIndex == index,
                listLength: _categories.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
