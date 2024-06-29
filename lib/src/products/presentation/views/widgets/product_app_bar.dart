import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/imports_manager.dart';

class ProductsAppBarSliver extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductsAppBarSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(SizesManager.m24),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              style: IconButton.styleFrom(
                backgroundColor: ColorsManager.greyLight,
              ),
              constraints: const BoxConstraints(
                minHeight: SizesManager.s40,
                minWidth: SizesManager.s40,
              ),
              padding: EdgeInsets.zero,
              iconSize: SizesManager.s18,
              icon: const Icon(
                Icons.navigate_before,
                color: ColorsManager.black,
              ),
            ),
            const SizedBox(
              width: SizesManager.s20,
            ),
            const Text(
              StringsManager.bigSmallFishes,
              style: TextStylesManager.Body1_Regular_16px,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                SVGsManager.search,
                width: SizesManager.s24,
                colorFilter: const ColorFilter.mode(
                  ColorsManager.black,
                  BlendMode.srcIn,
                ),
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
                  colorFilter: const ColorFilter.mode(
                    ColorsManager.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(SizesManager.s70);
}