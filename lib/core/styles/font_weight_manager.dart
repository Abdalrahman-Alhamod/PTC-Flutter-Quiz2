import 'package:flutter/material.dart';

abstract final class FontWeightManager {
  FontWeightManager._();
  static const bold = FontWeight.w700;
  static const semiBold = FontWeight.w600;
  static const medium = FontWeight.w500;
  static const regular = FontWeight.w400;
  static const light = FontWeight.w300;
}
