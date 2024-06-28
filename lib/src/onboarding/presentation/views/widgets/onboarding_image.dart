import 'package:flutter/material.dart';

class OnboardingPageImage extends StatelessWidget {
  const OnboardingPageImage({
    super.key,
    required this.path,
  });
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(path);
  }
}
