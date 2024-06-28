import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../domain/entities/product.dart';
import 'add_to_cart_button.dart';

class DealsGridSliver extends StatefulWidget {
  const DealsGridSliver({
    super.key,
  });

  @override
  State<DealsGridSliver> createState() => _DealsGridSliverState();
}

class _DealsGridSliverState extends State<DealsGridSliver> {
  late final List<Product> _product;
  @override
  void initState() {
    _product = [
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.orangePackage,
        quantity: 1,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.greenTeaPackage,
        quantity: 1,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.orangePackage,
        quantity: 1,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.greenTeaPackage,
        quantity: 1,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 325,
        name: StringsManager.orangePackage,
        quantity: 1,
      ),
      Product(
        image: ImagesManager.delivery,
        price: 89,
        name: StringsManager.greenTeaPackage,
        quantity: 1,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: SizesManager.p20),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 165 / 200,
          crossAxisSpacing: SizesManager.m12,
          mainAxisSpacing: SizesManager.m12,
        ),
        itemCount: _product.length,
        itemBuilder: (context, index) => Container(
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
              Text(
                '\$${_product[index].price}',
                style: TextStylesManager.Body2_Semibold_14px,
              ),
              Text(
                '${_product[index].name} | ${_product[index].quantity} ${StringsManager.bundle}',
                style: TextStylesManager.Label_Regular_12px.copyWith(
                  color: ColorsManager.blueGrayLight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
