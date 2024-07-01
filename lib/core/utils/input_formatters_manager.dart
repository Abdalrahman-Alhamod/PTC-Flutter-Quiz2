part of '../utils/imports_manager.dart';

abstract final class InputFormattersManager {
  static final List<TextInputFormatter> creditCardNumberFormatters = [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(16),
    CardNumberInputFormatter()
  ];
  static final List<TextInputFormatter> creditCardExpDateFormatters = [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(4),
    CardExpDateInputFormatter()
  ];
  static final List<TextInputFormatter> creditCardCVCFormatters = [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(4),
  ];
}
