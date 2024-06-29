import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../domain/entities/category.dart';

class CategoriesGridSliver extends StatefulWidget {
  const CategoriesGridSliver({
    super.key,
  });

  @override
  State<CategoriesGridSliver> createState() => _CategoriesGridSliverState();
}

class _CategoriesGridSliverState extends State<CategoriesGridSliver> {
  late final List<ProductCategory> _productCategories;
  @override
  void initState() {
    _productCategories = [
      ProductCategory(
        image: ImagesManager.delivery,
        name: StringsManager.fishes,
        description: StringsManager.fromSea,
      ),
      ProductCategory(
        image: ImagesManager.delivery,
        name: StringsManager.meats,
        description: StringsManager.organic,
      ),
      ProductCategory(
        image: ImagesManager.delivery,
        name: StringsManager.vegetables,
        description: StringsManager.organic,
      ),
      ProductCategory(
        image: ImagesManager.delivery,
        name: StringsManager.fruits,
        description: StringsManager.freshOrganic,
      ),
      ProductCategory(
        image: ImagesManager.delivery,
        name: StringsManager.fishes,
        description: StringsManager.fromSea,
      ),
      ProductCategory(
        image: ImagesManager.delivery,
        name: StringsManager.meats,
        description: StringsManager.organic,
      ),
      ProductCategory(
        image: ImagesManager.delivery,
        name: StringsManager.vegetables,
        description: StringsManager.organic,
      ),
      ProductCategory(
        image: ImagesManager.delivery,
        name: StringsManager.fruits,
        description: StringsManager.freshOrganic,
      ),
    ];
    super.initState();
  }

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
        itemCount: _productCategories.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(SizesManager.p10),
          width: 165,
          decoration: BoxDecoration(
            color: ColorsManager.greyLight,
            borderRadius: BorderRadius.circular(
              SizesManager.r12,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Image.asset(
                  _productCategories[index].image,
                  width: SizesManager.s80,
                  height: SizesManager.s80,
                ),
              ),
              const Divider(
                color: ColorsManager.greyDark,
                height: SizesManager.s1_5,
                thickness: 0.5,
              ),
              Text(
                _productCategories[index].name,
                style: TextStylesManager.Body2_Semibold_14px,
              ),
              Text(
                _productCategories[index].description,
                style: TextStylesManager.Label_Regular_12px.copyWith(
                  color: ColorsManager.greyDark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
