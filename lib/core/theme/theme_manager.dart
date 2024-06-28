part of '../utils/imports_manager.dart';

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
