class ProductCategory {
  final String image;
  final String name;
  final String description;
  final num? startingFromPrice;
  ProductCategory({
    required this.image,
    required this.name,
    required this.description,
    this.startingFromPrice,
  });
}
