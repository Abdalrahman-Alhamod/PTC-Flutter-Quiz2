import 'package:flutter/material.dart';
import 'widgets/categories_app_bar_sliver.dart';
import '../../../../core/utils/imports_manager.dart';
import '../../../home/domain/entities/product.dart';
import 'widgets/categories_grid_sliver.dart';
import 'widgets/categories_list_sliver.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CategoriesSliverAppBar(),
          CategoriesGridSliver(),
          CategoriesListSliver(),
          CategoriesProductsListTile(),
        ],
      ),
    );
  }
}

class CategoriesProductsListTile extends StatefulWidget {
  const CategoriesProductsListTile({
    super.key,
  });

  @override
  State<CategoriesProductsListTile> createState() =>
      _CategoriesProductsListTileState();
}

class _CategoriesProductsListTileState
    extends State<CategoriesProductsListTile> {
  late final List<Product> _products;
  @override
  void initState() {
    _products = [
      Product(
        image: ImagesManager.delivery,
        description: StringsManager.freshFromSea,
        price: 36,
        name: StringsManager.bigSmallFishes,
      ),
      Product(
        image: ImagesManager.delivery,
        description: StringsManager.organic,
        price: 90,
        name: StringsManager.halalMeats,
      ),
      Product(
        image: ImagesManager.delivery,
        description: StringsManager.freshFromSea,
        price: 36,
        name: StringsManager.bigSmallFishes,
      ),
      Product(
        image: ImagesManager.delivery,
        description: StringsManager.organic,
        price: 90,
        name: StringsManager.halalMeats,
      ),
    ];
    super.initState();
  }

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
        itemCount: _products.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: SizesManager.m30,
        ),
        itemBuilder: (context, index) {
          return CategoryListTile(
            product: _products[index],
            index: index,
          );
        },
      ),
    );
  }
}

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    super.key,
    required this.product,
    required this.index,
  });
  final Product product;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Row(
        children: [
          Container(
            width: 140,
            decoration: BoxDecoration(
              color: index % 2 == 0
                  ? ColorsManager.secondaryLight
                  : ColorsManager.pink,
              borderRadius: BorderRadius.circular(
                SizesManager.r12,
              ),
            ),
            padding: const EdgeInsets.all(SizesManager.p8),
            child: Center(
              child: Image.asset(
                product.image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SizesManager.m16,
              vertical: SizesManager.m12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStylesManager.H4_Bold_18px,
                ),
                const SizedBox(
                  height: SizesManager.s10,
                ),
                Text(
                  product.description ?? ' ',
                  style: TextStylesManager.Body1_Regular_16px.copyWith(
                      color: ColorsManager.greyDark),
                ),
                const Spacer(),
                Text(
                  StringsManager.startingFrom,
                  style: TextStylesManager.Body2_Regular_14px.copyWith(
                    color: ColorsManager.greyDark,
                  ),
                ),
                const SizedBox(
                  height: SizesManager.s10,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\$${product.price}',
                        style: TextStylesManager.Body1_Bold_16px,
                      ),
                      const TextSpan(
                        text: '/${StringsManager.kG}',
                        style: TextStylesManager.Body1_Regular_16px,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
