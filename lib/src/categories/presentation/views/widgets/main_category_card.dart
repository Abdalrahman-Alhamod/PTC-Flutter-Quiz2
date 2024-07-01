import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../domain/entities/category.dart';

class MainCategoryCard extends StatelessWidget {
  const MainCategoryCard({
    super.key,
    required this.category,
  });
  final ProductCategory category;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              category.image,
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
            category.name,
            style: TextStylesManager.Body2_Semibold_14px,
          ),
          Text(
            category.description,
            style: TextStylesManager.Label_Regular_12px.copyWith(
              color: ColorsManager.greyDark,
            ),
          ),
        ],
      ),
    );
  }
}
