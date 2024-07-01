import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'add_new_address_button.dart';
import 'delivery_address_box.dart';

class DeliveryAddressesListView extends StatefulWidget {
  const DeliveryAddressesListView({
    super.key,
  });

  @override
  State<DeliveryAddressesListView> createState() =>
      _DeliveryAddressesListViewState();
}

class _DeliveryAddressesListViewState extends State<DeliveryAddressesListView> {
  late int _selectedIndex;
  @override
  void initState() {
    _selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) =>
            index == FakeDataManager.deliveryAddresses.length
                ? const AddNewAddressButton()
                : DeliveryAddressBox(
                    deliveryAddress: FakeDataManager.deliveryAddresses[index],
                    isSelected: _selectedIndex == index,
                    onTap: () => setState(() {
                      _selectedIndex = index;
                    }),
                  ),
        separatorBuilder: (context, index) => const SizedBox(
          height: SizesManager.s24,
        ),
        itemCount: FakeDataManager.deliveryAddresses.length + 1,
      ),
    );
  }
}
