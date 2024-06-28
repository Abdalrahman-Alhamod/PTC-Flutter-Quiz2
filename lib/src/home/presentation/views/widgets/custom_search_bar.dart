import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/imports_manager.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: SizesManager.p24,
          vertical: SizesManager.p20,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(
            SizesManager.p28,
            SizesManager.p20,
            SizesManager.p12,
            SizesManager.p20,
          ),
          child: SvgPicture.asset(
            SVGsManager.search,
            width: 18,
            height: 18,
            fit: BoxFit.contain,
          ),
        ),
        fillColor: ColorsManager.primaryDark,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            SizesManager.r28,
          ),
        ),
        hintText: StringsManager.searchBarHint,
        hintStyle: TextStylesManager.Body2_Regular_14px.copyWith(
          color: ColorsManager.greyDark,
        ),
      ),
    );
  }
}
