import 'package:flutter/material.dart';

import '../../../home/domain/entities/product.dart';

class CartProvider with ChangeNotifier {
  Map<int, Product> _items = {};

  Map<int, Product> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, product) {
      total += product.price * product.quantity;
    });
    return total;
  }

  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (existingProduct) => existingProduct.copyWith(
          quantity: existingProduct.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        product.id,
        () => product,
      );
    }
    notifyListeners();
  }

  void removeItem(Product product) {
    _items.remove(product.id);
    notifyListeners();
  }

  void increaseQuantity(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (existingProduct) => existingProduct.copyWith(
          quantity: existingProduct.quantity + 1,
        ),
      );
      notifyListeners();
    }
  }

  void decreaseQuantity(Product product) {
    if (_items.containsKey(product.id)) {
      final newQuantity = product.quantity - 1;
      if (newQuantity > 0) {
        _items.update(
          product.id,
          (existingProduct) {
            return existingProduct.copyWith(
              quantity: newQuantity,
            );
          },
        );
      } else {
        _items.remove(product.id);
      }

      notifyListeners();
    }
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
