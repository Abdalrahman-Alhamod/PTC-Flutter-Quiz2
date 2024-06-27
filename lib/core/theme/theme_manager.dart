import 'package:flutter/material.dart';
import 'package:ptc_quiz2/core/assets/fonts_manager.dart';
import 'package:ptc_quiz2/core/colors/colors_manager.dart';
import 'package:ptc_quiz2/core/helpers/convert_to_material_color.dart';

abstract final class ThemeManager {
  ThemeManager._();
  static final appTheme = ThemeData(
    colorScheme: const ColorScheme.light().copyWith(
      primary: ColorsManager.primary,
      secondary: ColorsManager.secondary,
    ),
    primarySwatch: Color(ColorsManager.primary.value).toMaterialColor(),
    primaryColor: ColorsManager.primary,
    fontFamily: FontsManager.Manrope,
    brightness: Brightness.light,
    useMaterial3: true,
  );
}
