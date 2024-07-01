import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../domain/entities/category.dart';

import '../../../../../core/utils/imports_manager.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    super.key,
    required this.category,
    required this.index,
  });
  final ProductCategory category;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).pushNamed(AppRoutes.products.name),
      child: SizedBox(
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
                  category.image,
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
                    category.name,
                    style: TextStylesManager.H4_Bold_18px,
                  ),
                  const SizedBox(
                    height: SizesManager.s10,
                  ),
                  Text(
                    category.description,
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
                          text: '\$${category.startingFromPrice}',
                          style: TextStylesManager.Body1_Bold_16px.copyWith(
                            color: ColorsManager.primary,
                          ),
                        ),
                        TextSpan(
                          text: '/${StringsManager.kG}',
                          style: TextStylesManager.Body1_Regular_16px.copyWith(
                            color: ColorsManager.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
