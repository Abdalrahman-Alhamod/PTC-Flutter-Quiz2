import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'category_box.dart';

class CategoriesListSliver extends StatefulWidget {
  const CategoriesListSliver({
    super.key,
  });

  @override
  State<CategoriesListSliver> createState() => _CategoriesListSliverState();
}

class _CategoriesListSliverState extends State<CategoriesListSliver> {
  late int _currentIndex;
  late final List<String> _categories;
  @override
  void initState() {
    _currentIndex = 0;
    _categories = [
      StringsManager.meatsFishes,
      StringsManager.vegetables,
      StringsManager.fruits,
      StringsManager.fishes,
    ];
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
