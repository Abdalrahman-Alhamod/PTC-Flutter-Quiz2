class Order {
  final String productImage;
  final String productName;
  final num productPrice;
  final int id;
  final bool isDelivered;
  final String? riderName;
  final String? riderImage;
  final DateTime? deliveryDate;

  Order({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.id,
    required this.isDelivered,
     this.riderName,
     this.riderImage,
     this.deliveryDate,
  });
}
