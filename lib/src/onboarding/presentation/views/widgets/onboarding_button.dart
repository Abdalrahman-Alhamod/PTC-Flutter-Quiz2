import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/imports_manager.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    required this.pageController,
    required this.isLastPage,
  });
  final PageController pageController;
  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (isLastPage) {
          GoRouter.of(context).pushReplacementNamed(AppRoutes.bottomBar.name);
        } else {
          pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: SizesManager.p48,
          vertical: SizesManager.p24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizesManager.r20,
          ),
        ),
        fixedSize: const Size.fromWidth(260),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            isLastPage ? StringsManager.getStarted : StringsManager.next,
            style: TextStylesManager.Body1_Semibold_16px.copyWith(
              color: ColorsManager.black,
            ),
          ),
          const SizedBox(
            width: SizesManager.s32,
          ),
          const Icon(
            Icons.east,
            color: ColorsManager.black,
          ),
        ],
      ),
    );
  }
}
