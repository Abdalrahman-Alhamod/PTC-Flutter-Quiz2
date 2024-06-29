import 'package:flutter/material.dart';
import 'package:ptc_quiz2/core/utils/imports_manager.dart';

import 'widgets/action_buttons.dart';
import 'widgets/introductory_widget.dart';
import 'widgets/price_bar.dart';
import 'widgets/product_details_app_bar.dart';
import 'widgets/product_image_view.dart';
import 'widgets/reviews_bar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ProductDetailsAppBar(),
          const ProductImageView(),
          const SizedBox(
            height: SizesManager.s20,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: SizesManager.p8),
              padding: const EdgeInsets.symmetric(
                horizontal: SizesManager.p18,
                vertical: SizesManager.p24,
              ),
              decoration: const BoxDecoration(
                color: ColorsManager.greyLight,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(SizesManager.r30),
                  topRight: Radius.circular(SizesManager.r30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      StringsManager.thinChoiseTopOrange,
                      style: TextStylesManager.H3_Semibold_20px,
                    ),
                    const SizedBox(
                      height: SizesManager.s12,
                    ),
                    const PriceBar(),
                    const SizedBox(
                      height: SizesManager.s24,
                    ),
                    const ReviewsBar(),
                    const SizedBox(
                      height: SizesManager.s32,
                    ),
                    Text(
                      StringsManager.details,
                      style: TextStylesManager.Body1_Regular_16px.copyWith(
                        color: ColorsManager.blueGreyDark,
                      ),
                    ),
                    const SizedBox(
                      height: SizesManager.s6,
                    ),
                    Text(
                      StringsManager.detailsDesc,
                      style: TextStylesManager.Body2_Regular_14px.copyWith(
                        color: ColorsManager.blueGreyLight,
                      ),
                    ),
                    const SizedBox(
                      height: SizesManager.s40,
                    ),
                    const IntroductoryWidget(
                      title: StringsManager.nutritionalFacts,
                      text: StringsManager.detailsDesc,
                    ),
                    const SizedBox(
                      height: SizesManager.s8,
                    ),
                    const Divider(
                      color: ColorsManager.blueGreyLight,
                      height: 20,
                    ),
                    const SizedBox(
                      height: SizesManager.s8,
                    ),
                    const IntroductoryWidget(
                      title: StringsManager.reviews,
                      text: StringsManager.detailsDesc,
                    ),
                    const SizedBox(
                      height: SizesManager.s32,
                    ),
                    const ActionButtons(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
