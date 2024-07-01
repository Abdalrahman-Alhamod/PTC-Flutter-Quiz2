import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../domain/entities/ads.dart';

class AdsBox extends StatelessWidget {
  const AdsBox({
    super.key,
    required this.isCurrent,
    required this.isLast,
    required this.ads,
  });

  final bool isCurrent;
  final bool isLast;
  final Ads ads;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: !isLast
          ? const EdgeInsets.only(left: SizesManager.m20)
          : const EdgeInsets.symmetric(horizontal: SizesManager.m20),
      width: 270,
      decoration: BoxDecoration(
        color: isCurrent ? ColorsManager.secondary : ColorsManager.grey,
        borderRadius: BorderRadius.circular(
          SizesManager.r20,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SizesManager.m20,
              vertical: SizesManager.m26,
            ),
            child: Image.asset(
              ads.image,
              width: SizesManager.s100,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringsManager.get,
                style: TextStylesManager.H3_Regular_20px.copyWith(
                  color: ColorsManager.white,
                  fontWeight: FontWeightManager.light,
                ),
              ),
              Text(
                '${ads.offPercent}% ${StringsManager.off}',
                style: TextStylesManager.H2_Bold_26px.copyWith(
                  color: ColorsManager.white,
                ),
              ),
              Text(
                '${StringsManager.onFirst} ${ads.orderNumber} ${StringsManager.orderAds}',
                style: TextStylesManager.Label_Regular_12px.copyWith(
                  color: ColorsManager.white,
                  fontWeight: FontWeightManager.light,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
