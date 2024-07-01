part of '../utils/imports_manager.dart';

// class FakeDataManager {
//   static final List<Product> products = [
//     Product(
//       image: ImagesManager.delivery,
//       price: 30,
//       name: StringsManager.freshLemon,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 20,
//       name: StringsManager.bananas,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 40,
//       name: StringsManager.orange,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 70,
//       name: StringsManager.bananas,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 40,
//       name: StringsManager.freshLemon,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 10,
//       name: StringsManager.orange,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 30,
//       name: StringsManager.bananas,
//       description: StringsManager.organic,
//     ),
//   ];
//   static final List<Product> bigSmallFishesProducts = [
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.clownTangH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.clownTangH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.goldFishH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.fishH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.clownfishH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.clownTangH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.clownTangH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.clownTangH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.goldFishH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.fishH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.clownfishH03,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.clownTangH03,
//     ),
//   ];
//   static final List<Product> deals = [
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.orangePackage,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.greenTeaPackage,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.orangePackage,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.greenTeaPackage,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 325,
//       name: StringsManager.orangePackage,
//       description: StringsManager.organic,
//     ),
//     Product(
//       image: ImagesManager.delivery,
//       price: 89,
//       name: StringsManager.greenTeaPackage,
//       description: StringsManager.organic,
//     ),
//   ];
//   static final List<ProductCategory> categories = [
//     ProductCategory(
//       image: ImagesManager.delivery,
//       name: StringsManager.fishes,
//       description: StringsManager.fromSea,
//     ),
//     ProductCategory(
//       image: ImagesManager.delivery,
//       name: StringsManager.meats,
//       description: StringsManager.organic,
//     ),
//     ProductCategory(
//       image: ImagesManager.delivery,
//       name: StringsManager.vegetables,
//       description: StringsManager.organic,
//     ),
//     ProductCategory(
//       image: ImagesManager.delivery,
//       name: StringsManager.fruits,
//       description: StringsManager.freshOrganic,
//     ),
//     ProductCategory(
//       image: ImagesManager.delivery,
//       name: StringsManager.fishes,
//       description: StringsManager.fromSea,
//     ),
//     ProductCategory(
//       image: ImagesManager.delivery,
//       name: StringsManager.meats,
//       description: StringsManager.organic,
//     ),
//     ProductCategory(
//       image: ImagesManager.delivery,
//       name: StringsManager.vegetables,
//       description: StringsManager.organic,
//     ),
//     ProductCategory(
//       image: ImagesManager.delivery,
//       name: StringsManager.fruits,
//       description: StringsManager.freshOrganic,
//     ),
//   ];
// }
class FakeDataManager {
  static final List<Product> products = [
    Product(
      id: _generateId(),
      image: ImagesManager.freshLemon,
      price: 2.99,
      name: StringsManager.freshLemon,
      description: StringsManager.citrus,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.bananas,
      price: 1.49,
      name: StringsManager.bananas,
      description: StringsManager.sweet,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.orange,
      price: 3.99,
      name: StringsManager.oranges,
      description: StringsManager.juicy,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.apple,
      price: 4.99,
      name: StringsManager.apples,
      description: StringsManager.crisp,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.strawberry,
      price: 5.99,
      name: StringsManager.strawberries,
      description: StringsManager.fresh,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.grapes,
      price: 6.99,
      name: StringsManager.grapes,
      description: StringsManager.juicy,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.blueberries,
      price: 7.99,
      name: StringsManager.blueberries,
      description: StringsManager.sweet,
    ),
  ];

  static final List<Product> bigSmallFishesProducts = [
    Product(
      id: _generateId(),
      image: ImagesManager.clownTang,
      price: 15.99,
      name: StringsManager.clownTang,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.goldFish,
      price: 9.99,
      name: StringsManager.goldFish,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.bettaFish,
      price: 12.99,
      name: StringsManager.bettaFish,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.angelfish,
      price: 19.99,
      name: StringsManager.angelfish,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.cichlid,
      price: 14.99,
      name: StringsManager.cichlid,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.catfish,
      price: 11.99,
      name: StringsManager.catfish,
    ),
  ];

  static final List<Product> deals = [
    Product(
      id: _generateId(),
      image: ImagesManager.orangePackage,
      price: 25.99,
      name: StringsManager.orangePackageBundle,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.applePackage,
      price: 20.99,
      name: StringsManager.applePackageBundle,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.mixedFruitsPackage,
      price: 35.99,
      name: StringsManager.mixedFruitsBundle,
    ),
    Product(
      id: _generateId(),
      image: ImagesManager.vegetablePackage,
      price: 29.99,
      name: StringsManager.vegetableBundle,
    ),
  ];

  static final List<ProductCategory> categories = [
    ProductCategory(
      image: ImagesManager.fishes,
      name: StringsManager.fishes,
      description: StringsManager.fresh,
    ),
    ProductCategory(
      image: ImagesManager.meats,
      name: StringsManager.meats,
      description: StringsManager.organic,
    ),
    ProductCategory(
      image: ImagesManager.vegetables,
      name: StringsManager.vegetables,
      description: StringsManager.organic,
    ),
    ProductCategory(
      image: ImagesManager.fruits,
      name: StringsManager.fruits,
      description: StringsManager.fresh,
    ),
    ProductCategory(
      image: ImagesManager.dairy,
      name: StringsManager.dairy,
      description: StringsManager.fresh,
    ),
    ProductCategory(
      image: ImagesManager.bakery,
      name: StringsManager.bakery,
      description: StringsManager.fresh,
    ),
    ProductCategory(
      image: ImagesManager.beverages,
      name: StringsManager.beverages,
      description: StringsManager.refreshing,
    ),
    ProductCategory(
      image: ImagesManager.snacks,
      name: StringsManager.snacks,
      description: StringsManager.delicious,
    ),
  ];
  static final List<ProductCategory> filteredCategoies = [
    ProductCategory(
      image: ImagesManager.fishes,
      description: StringsManager.freshFromSea,
      startingFromPrice: 36,
      name: StringsManager.bigSmallFishes,
    ),
    ProductCategory(
      image: ImagesManager.meats,
      description: StringsManager.organic,
      startingFromPrice: 90,
      name: StringsManager.halalMeats,
    ),
  ];
  static final List<String> categoriesNames = [
    StringsManager.meatsFishes,
    StringsManager.vegetables,
    StringsManager.fruits,
    StringsManager.fishes,
  ];
  static final List<String> bigSmallFishesCategoriesNames = [
    StringsManager.popular,
    StringsManager.lowPrice,
    StringsManager.smallFishes,
    StringsManager.big,
  ];
  static final List<Ads> adsList = [
    Ads(
      image: ImagesManager.orangePackage,
      offPercent: 50,
      orderNumber: 10,
    ),
    Ads(
      image: ImagesManager.applePackage,
      offPercent: 25,
      orderNumber: 5,
    ),
    Ads(
      image: ImagesManager.vegetablePackage,
      offPercent: 75,
      orderNumber: 3,
    ),
  ];
  static int _globalId = 1;

  static int _generateId() {
    return _globalId++;
  }

  static const double deliveryPrice = 2.0;
}
