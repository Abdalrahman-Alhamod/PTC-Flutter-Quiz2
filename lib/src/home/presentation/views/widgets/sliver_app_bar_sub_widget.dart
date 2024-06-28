import 'package:flutter/material.dart';
import '../../../../../core/utils/imports_manager.dart';

class SliverAppBarSubWidget extends StatelessWidget {
  const SliverAppBarSubWidget({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStylesManager.Label_Medium_12px.copyWith(
            color: ColorsManager.greyDark,
            fontWeight: FontWeightManager.extraBold,
          ),
        ),
        Row(
          children: [
            Text(
              content,
              style: TextStylesManager.Body2_Regular_14px.copyWith(
                color: ColorsManager.white,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(
                minWidth: SizesManager.s20,
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: ColorsManager.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
