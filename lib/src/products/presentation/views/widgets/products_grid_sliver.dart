import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../home/domain/entities/product.dart';
import '../../../../home/presentation/views/widgets/add_to_cart_button.dart';

class ProductsGridSliver extends StatefulWidget {
  const ProductsGridSliver({
    super.key,
  });

  @override
  State<ProductsGridSliver> createState() => _ProductsGridSliverState();
}

class _ProductsGridSliverState extends State<ProductsGridSliver> {
  late final List<Product> _product;
  @override
  void initState() {
    _product = [
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.clownTangH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.clownTangH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.goldFishH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.fishH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.clownfishH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.clownTangH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.clownTangH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.clownTangH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.goldFishH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.fishH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.clownfishH03,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.clownTangH03,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        SizesManager.m20,
        0,
        SizesManager.m20,
        SizesManager.m20,
      ),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 165 / 200,
          crossAxisSpacing: SizesManager.m16,
          mainAxisSpacing: SizesManager.m24,
        ),
        itemCount: _product.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => GoRouter.of(context).pushNamed(
            AppRoutes.productsDetails.name,
          ),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              color: ColorsManager.greyLight,
              borderRadius: BorderRadius.circular(
                SizesManager.r12,
              ),
            ),
            padding: const EdgeInsets.all(SizesManager.p18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    _product[index].image,
                    height: SizesManager.s80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: SizesManager.s6,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: AddToCartButton(),
                ),
                const Spacer(),
                Text(
                  '\$${_product[index].price}',
                  style: TextStylesManager.Body2_Semibold_14px,
                ),
                Text(
                  _product[index].name,
                  style: TextStylesManager.Label_Regular_12px.copyWith(
                    color: ColorsManager.blueGreyLight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
