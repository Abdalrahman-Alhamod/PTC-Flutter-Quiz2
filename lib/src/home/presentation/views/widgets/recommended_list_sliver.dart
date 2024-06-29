import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'add_to_cart_button.dart';

class RecommendedListSliver extends StatelessWidget {
  const RecommendedListSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        0,
        SizesManager.m4,
        0,
        SizesManager.m18,
      ),
      sliver: SliverToBoxAdapter(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 190,
          ),
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: index != 4
                    ? const EdgeInsets.only(left: SizesManager.m20)
                    : const EdgeInsets.symmetric(
                        horizontal: SizesManager.m20,
                      ),
                padding: const EdgeInsets.all(SizesManager.p10),
                width: 130,
                decoration: BoxDecoration(
                  color: ColorsManager.greyLight,
                  borderRadius: BorderRadius.circular(
                    SizesManager.r12,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        ImagesManager.delivery,
                        width: SizesManager.s80,
                        height: SizesManager.s80,
                      ),
                    ),
                    const Divider(
                      color: ColorsManager.greyDark,
                      height: 0.5,
                      thickness: 0.5,
                    ),
                    const Text(
                      StringsManager.freshLemon,
                      style: TextStylesManager.Body2_Semibold_14px,
                    ),
                    Text(
                      StringsManager.organic,
                      style: TextStylesManager.Label_Regular_12px.copyWith(
                        color: ColorsManager.greyDark,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          width: 110,
                          height: 24,
                          padding: const EdgeInsets.symmetric(
                            horizontal: SizesManager.p12,
                            vertical: SizesManager.p4,
                          ),
                          decoration: BoxDecoration(
                            color: ColorsManager.white,
                            borderRadius: BorderRadius.circular(
                              SizesManager.r12,
                            ),
                          ),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${StringsManager.unit}   ',
                                  style: TextStylesManager.Label_Regular_12px
                                      .copyWith(
                                    color: ColorsManager.greyDark,
                                  ),
                                ),
                                TextSpan(
                                  text: '\$20',
                                  style: TextStylesManager.Label_Medium_12px
                                      .copyWith(
                                    fontWeight: FontWeightManager.semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const AddToCartButton()
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
