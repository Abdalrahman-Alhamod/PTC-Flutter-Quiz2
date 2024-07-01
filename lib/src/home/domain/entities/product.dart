class Product {
  final int id;
  final String image;
  final num price;
  final String name;
  final String? description;
  final int quantity;

  Product({
    required this.id,
    required this.image,
    required this.price,
    required this.name,
    this.quantity = 1,
    this.description,
  });
  Product copyWith({
    int? id,
    String? image,
    num? price,
    String? name,
    String? description,
    int? quantity,
  }) {
    return Product(
      id: id ?? this.id,
      image: image ?? this.image,
      price: price ?? this.price,
      name: name ?? this.name,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
    );
  }
}
