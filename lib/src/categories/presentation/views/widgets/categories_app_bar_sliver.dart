import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/imports_manager.dart';

class CategoriesSliverAppBar extends StatelessWidget {
  const CategoriesSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ColorsManager.primary,
      expandedHeight: 270,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.fromLTRB(
            SizesManager.m20,
            SizesManager.m50,
            SizesManager.m20,
            SizesManager.m12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    StringsManager.homeHello,
                    style: TextStylesManager.H3_Semibold_20px.copyWith(
                      color: ColorsManager.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      SVGsManager.search,
                      width: SizesManager.s24,
                    ),
                  ),
                  const SizedBox(
                    width: SizesManager.m32,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Badge.count(
                      count: 3,
                      backgroundColor: ColorsManager.secondary,
                      child: SvgPicture.asset(
                        SVGsManager.cart,
                        width: SizesManager.s24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: SizesManager.s12,
              ),
              const Text(
                StringsManager.shop,
                style: TextStyle(
                  fontSize: SizesManager.s50,
                  fontWeight: FontWeightManager.light,
                  color: ColorsManager.white,
                ),
              ),
              const Text(
                StringsManager.byCategory,
                style: TextStyle(
                  fontSize: SizesManager.s50,
                  fontWeight: FontWeightManager.extraBold,
                  color: ColorsManager.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
