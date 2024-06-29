import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/imports_manager.dart';

class ProductImageViewerIndicator extends StatelessWidget {
  const ProductImageViewerIndicator({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controller,
      count: 3,
      onDotClicked: (index) {
        _controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      effect: const ExpandingDotsEffect(
        dotWidth: 20,
        dotHeight: 4,
        expansionFactor: 1.05,
        dotColor: ColorsManager.greyLight,
        activeDotColor: ColorsManager.secondary,
      ),
    );
  }
}
