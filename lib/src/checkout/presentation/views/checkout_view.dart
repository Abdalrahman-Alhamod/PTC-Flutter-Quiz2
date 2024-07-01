import 'package:flutter/material.dart';
import 'package:ptc_quiz2/core/utils/imports_manager.dart';
import 'package:ptc_quiz2/core/widgets/custome_filled_elevated_button.dart';
import 'package:ptc_quiz2/src/checkout/presentation/views/widgets/checkout_app_bar.dart';
import 'package:ptc_quiz2/src/checkout/presentation/views/widgets/delivery_addresses_list_view.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CheckoutAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          SizesManager.p24,
          SizesManager.p32,
          SizesManager.p24,
          SizesManager.p32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringsManager.deliveryAddress,
              style: TextStylesManager.Body1_Regular_16px,
            ),
            const SizedBox(
              height: SizesManager.s24,
            ),
            const DeliveryAddressesListView(),
            CustomFilledElevatedButton(
              title: StringsManager.addCard,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
