import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/imports_manager.dart';
import 'main_category_card.dart';

class CategoriesGridSliver extends StatelessWidget {
  const CategoriesGridSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(SizesManager.p24),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 155 / 165,
          crossAxisSpacing: SizesManager.m20,
          mainAxisSpacing: SizesManager.m20,
        ),
        itemCount: FakeDataManager.categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => GoRouter.of(context).pushNamed(AppRoutes.products.name),
          child: MainCategoryCard(
            category: FakeDataManager.categories[index],
          ),
        ),
      ),
    );
  }
}
