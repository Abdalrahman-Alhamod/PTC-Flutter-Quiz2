import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../domain/entities/home_brief.dart';

class HomeBriefBox extends StatelessWidget {
  const HomeBriefBox({
    super.key,
    required this.isLast,
    required this.isCurrent,
    required this.homeBrief,
  });

  final bool isLast;
  final bool isCurrent;
  final HomeBrief homeBrief;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: !isLast
          ? const EdgeInsets.only(left: SizesManager.m20)
          : const EdgeInsets.symmetric(horizontal: SizesManager.m20),
      width: 180,
      decoration: BoxDecoration(
        color: isCurrent ? ColorsManager.secondary : ColorsManager.grey,
        borderRadius: BorderRadius.circular(
          SizesManager.r20,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: SizesManager.p20,
        vertical: SizesManager.p32,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${homeBrief.number} ',
                  style: TextStylesManager.H2_Bold_26px,
                ),
                TextSpan(
                  text: homeBrief.unit,
                  style: TextStylesManager.H2_Regular_26px,
                ),
              ],
            ),
          ),
          Text(
            homeBrief.description,
            style: TextStylesManager.Body2_Regular_14px,
          ),
        ],
      ),
    );
  }
}
