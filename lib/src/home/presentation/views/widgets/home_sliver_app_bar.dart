import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/imports_manager.dart';
import 'custom_search_bar.dart';
import 'sliver_app_bar_sub_widget.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringsManager.homeHello,
                    style: TextStylesManager.H3_Semibold_20px.copyWith(
                      color: ColorsManager.white,
                    ),
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
                height: SizesManager.s36,
              ),
              const CustomSearchBar(),
              const SizedBox(
                height: SizesManager.s30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SliverAppBarSubWidget(
                    title: StringsManager.deliveryTo,
                    content: StringsManager.deliveryToAddresss,
                  ),
                  SliverAppBarSubWidget(
                    title: StringsManager.within,
                    content: StringsManager.withinTime,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
