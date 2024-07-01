import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'category_list_tile.dart';

class CategoriesProductsListTile extends StatelessWidget {
  const CategoriesProductsListTile({
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
        itemCount: FakeDataManager.filteredCategoies.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: SizesManager.m30,
        ),
        itemBuilder: (context, index) {
          return CategoryListTile(
            category: FakeDataManager.filteredCategoies[index],
            index: index,
          );
        },
      ),
    );
  }
}
