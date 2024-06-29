class Product {
  final String image;
  final num price;
  final String name;
  final String? description;
  final int? quantity;

  Product({
    required this.image,
    required this.price,
    required this.name,
     this.quantity,
    this.description,
  });
}
