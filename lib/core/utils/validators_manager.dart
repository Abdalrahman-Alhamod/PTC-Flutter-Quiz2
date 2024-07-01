// ignore_for_file: prefer_function_declarations_over_variables

part of './imports_manager.dart';

abstract final class ValidatorsManager {
  static final creditCardNumberValidator = (ccNumStr) {
    if (CreditCardValidator().validateCCNum(ccNumStr!).isValid) {
      return null;
    }
    return 'Invalid card number';
  };
  static final creditCardCVCValidator = (ccCVCStr) {
    if (ccCVCStr.isEmpty) {
      return "Field is required";
    }

    if (ccCVCStr.length < 3 || ccCVCStr.length > 4) {
      return "CVV is invalid";
    }
    return null;
  };
  static final creditCardExpDateValidator = (expDateStr) {
    final parts = expDateStr.split('/');

    if (parts.length != 2) {
      return 'Invalid expiration date';
    }

    final now = DateTime.now();
    final month = int.tryParse(parts[0]) ?? 0;
    final year = int.tryParse('20${parts[1]}') ?? 0;

    if (month < 1 || month > 12) {
      return 'Invalid month';
    }

    if (year < now.year || (year == now.year && month < now.month)) {
      return 'Expired card';
    }

    return null; // Valid expiration date
  };
}
