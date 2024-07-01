import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'credit_card_text_field.dart';

class CreditCardForm extends StatelessWidget {
  const CreditCardForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsManager.cardHolderName,
            style: TextStylesManager.Label_Semibold_12px.copyWith(
              color: ColorsManager.grey,
            ),
          ),
          const CreditCardTextField(
            hintText: StringsManager.johnSmith,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(
            height: SizesManager.s32,
          ),
          Text(
            StringsManager.cardNumber,
            style: TextStylesManager.Label_Semibold_12px.copyWith(
              color: ColorsManager.grey,
            ),
          ),
          CreditCardTextField(
            hintText: StringsManager.cardNumberValue,
            textInputFormatters:
                InputFormattersManager.creditCardNumberFormatters,
            keyboardType: TextInputType.number,
            validator: ValidatorsManager.creditCardNumberValidator,
          ),
          const SizedBox(
            height: SizesManager.s32,
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringsManager.expDate,
                      style: TextStylesManager.Label_Semibold_12px.copyWith(
                        color: ColorsManager.grey,
                      ),
                    ),
                    CreditCardTextField(
                      hintText: StringsManager.expDateValue,
                      textInputFormatters:
                          InputFormattersManager.creditCardExpDateFormatters,
                      keyboardType: TextInputType.datetime,
                      validator: ValidatorsManager.creditCardExpDateValidator,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: SizesManager.s32,
              ),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringsManager.cVc,
                      style: TextStylesManager.Label_Semibold_12px.copyWith(
                        color: ColorsManager.grey,
                      ),
                    ),
                    CreditCardTextField(
                      hintText: StringsManager.cVcValue,
                      textInputFormatters:
                          InputFormattersManager.creditCardCVCFormatters,
                      keyboardType: TextInputType.number,
                      validator: ValidatorsManager.creditCardCVCValidator,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
