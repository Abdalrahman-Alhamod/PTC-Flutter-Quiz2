import 'package:flutter/material.dart';

import '../utils/imports_manager.dart';

class CustomFilledElevatedButton extends StatelessWidget {
  const CustomFilledElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(
          double.infinity,
          70,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizesManager.r20,
          ),
        ),
        backgroundColor: ColorsManager.primary,
        foregroundColor: ColorsManager.white,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStylesManager.Body2_Semibold_14px.copyWith(
          color: ColorsManager.white,
        ),
      ),
    );
  }
}
