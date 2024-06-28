import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class TitleSliver extends StatelessWidget {
  const TitleSliver({
    super.key,
    required this.title, required this.textStyle,
  });
  final String title;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        SizesManager.m20,
        SizesManager.m4,
        SizesManager.m20,
        SizesManager.m18,
      ),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
