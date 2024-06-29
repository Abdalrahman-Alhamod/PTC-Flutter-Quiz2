import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../../../core/widgets/back_arrow_icon_button.dart';
import '../../../../shoppingCart/presentation/views/widgets/cart_icon_button.dart';

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
            const BackArrowIconButon(),
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
            const CartIconButton(
              color: ColorsManager.black,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(SizesManager.s70);
}
