import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
    required this.isLast,
  });
  final String title;
  final void Function() onTap;
  final bool isSelected;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: !isLast
            ? const EdgeInsets.only(left: SizesManager.m20)
            : const EdgeInsets.symmetric(
                horizontal: SizesManager.m20,
              ),
        padding: const EdgeInsets.symmetric(
          horizontal: SizesManager.p16,
          vertical: SizesManager.p8,
        ),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.secondary : ColorsManager.white,
          border: isSelected
              ? null
              : Border.all(
                  color: ColorsManager.grey,
                ),
          borderRadius: BorderRadius.circular(
            SizesManager.r20,
          ),
        ),
        child: Text(
          title,
          style: TextStylesManager.Body2_Semibold_14px.copyWith(
            color:
                isSelected ? ColorsManager.white : ColorsManager.blueGreyLight,
          ),
        ),
      ),
    );
  }
}
