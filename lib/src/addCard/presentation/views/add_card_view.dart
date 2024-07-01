import 'package:flutter/material.dart';
import 'widgets/add_card_app_bar.dart';
import 'widgets/card_bottom_sheet.dart';

import '../../../../core/utils/imports_manager.dart';
import 'widgets/credit_card_form.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddCardAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          SizesManager.p24,
          SizesManager.p32,
          SizesManager.p24,
          SizesManager.p32,
        ),
        child: CreditCardForm(formKey: _formKey),
      ),
      bottomSheet: AddCardBottomSheet(formKey: _formKey),
    );
  }
}
