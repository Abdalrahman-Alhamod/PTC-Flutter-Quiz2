import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'product_image_viewer_indicator.dart';

class ProductImageView extends StatefulWidget {
  const ProductImageView({super.key});

  @override
  State<ProductImageView> createState() => _ProductImageViewState();
}

class _ProductImageViewState extends State<ProductImageView> {
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: PageView(
              controller: _pageController,
              children: [
                Image.asset(ImagesManager.delivery),
                Image.asset(ImagesManager.delivery),
                Image.asset(ImagesManager.delivery),
              ],
            ),
          ),
          const SizedBox(
            height: SizesManager.s30,
          ),
          ProductImageViewerIndicator(controller: _pageController),
        ],
      ),
    );
  }
}
