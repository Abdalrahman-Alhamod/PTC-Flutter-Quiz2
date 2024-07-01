import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/date_time_helper.dart';
import '../../../../../core/utils/imports_manager.dart';
import '../../../../../core/widgets/custome_filled_elevated_button.dart';
import '../../../domain/entities/order.dart';

class OrderListTile extends StatelessWidget {
  const OrderListTile({
    super.key,
    required this.order,
  });
  final Order order;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: order.isDelivered ? 120 : 220,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  order.productImage,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  width: SizesManager.m20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(
                                  flex: 3,
                                ),
                                SizedBox(
                                  width: 130,
                                  child: AutoSizeText(
                                    order.productName,
                                    maxLines: 2,
                                    style: TextStylesManager.Body2_Medium_14px,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '\$${order.productPrice}',
                                  style: TextStylesManager.Body2_Regular_14px,
                                ),
                                const Spacer(
                                  flex: 3,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${StringsManager.id}: ',
                                    style: TextStylesManager.Body2_Regular_14px
                                        .copyWith(
                                      color: ColorsManager.blueGreyLight,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '#${order.id}',
                                    style: TextStylesManager.Body2_Regular_14px,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      order.isDelivered
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  DateTimeHelper.formatDate(
                                      order.deliveryDate!),
                                  style: TextStylesManager.Body2_Regular_14px
                                      .copyWith(
                                    color: ColorsManager.blueGreyLight,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorsManager.primary.withAlpha(
                                      20,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      SizesManager.r6,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: SizesManager.p12,
                                    vertical: SizesManager.p6,
                                  ),
                                  child: Text(
                                    StringsManager.success,
                                    style: TextStylesManager.Label_Medium_12px
                                        .copyWith(
                                      color: ColorsManager.primary,
                                    ),
                                  ),
                                )
                              ],
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          order.isDelivered
              ? const SizedBox()
              : Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              ImagesManager.delivery,
                              width: 170,
                            ),
                            CircleAvatar(
                              backgroundColor: ColorsManager.white,
                              radius: 24,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  order.riderImage!,
                                ),
                                backgroundColor: ColorsManager.grey,
                                radius: 20,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${StringsManager.meetOurRider}${order.riderName}',
                          style: TextStylesManager.Label_Regular_12px.copyWith(
                            color: ColorsManager.blueGrey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${StringsManager.your} ${order.productName}',
                          style: TextStylesManager.H3_Regular_20px,
                        ),
                        const Text(
                          StringsManager.areOnTheWay,
                          style: TextStylesManager.H3_Bold_20px,
                        ),
                        const SizedBox(
                          height: SizesManager.s10,
                        ),
                        SizedBox(
                          width: 150,
                          child: CustomFilledElevatedButton(
                            title: StringsManager.trackOrder,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          const SizedBox(
            height: SizesManager.s20,
          ),
          const Divider(
            height: SizesManager.s10,
            color: ColorsManager.grey,
          )
        ],
      ),
    );
  }
}
