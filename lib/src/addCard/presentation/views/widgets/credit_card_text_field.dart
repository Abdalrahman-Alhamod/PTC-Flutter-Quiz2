import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/utils/imports_manager.dart';

class CreditCardTextField extends StatelessWidget {
  const CreditCardTextField(
      {super.key,
      required this.hintText,
      this.textInputFormatters,
      required this.keyboardType,
      this.validator});
  final String hintText;
  final List<TextInputFormatter>? textInputFormatters;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.grey,
          ),
        ),
        hintText: hintText,
      ),
      inputFormatters: textInputFormatters,
    );
  }
}
