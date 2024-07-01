import 'package:flutter/material.dart';

import '../../../../core/utils/imports_manager.dart';
import 'widgets/onboarding_button.dart';
import 'widgets/onboarding_image.dart';
import 'widgets/onboarding_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late final PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool _isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primary,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: SizesManager.m40,
          vertical: SizesManager.m32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringsManager.onboardingHeading1,
              style: TextStylesManager.H1_Bold_30px.copyWith(
                color: ColorsManager.white,
              ),
            ),
            const SizedBox(
              height: SizesManager.s24,
            ),
            Text(
              StringsManager.onboardingHeading2,
              style: TextStylesManager.H4_Medium_18px.copyWith(
                color: ColorsManager.textColor,
              ),
            ),
            const SizedBox(
              height: SizesManager.s40,
            ),
            OnboardingPageIndicator(controller: _pageController),
            const Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _isLastPage = value == 2;
                  });
                },
                children: const [
                  OnboardingPageImage(
                    path: ImagesManager.onboarding1,
                  ),
                  OnboardingPageImage(
                    path: ImagesManager.onboarding2,
                  ),
                  OnboardingPageImage(
                    path: ImagesManager.onboarding3,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: OnboardingButton(
                pageController: _pageController,
                isLastPage: _isLastPage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
