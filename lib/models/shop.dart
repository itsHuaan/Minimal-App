import 'package:flutter/material.dart';
import 'package:minimal_shop/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(name: 'Product 1', price: 99.99, description: 'Description for product 1', imagePath: 'assets/images/product1.png'),
    Product(name: 'Product 2', price: 89.99, description: 'Description for product 2', imagePath: 'assets/images/product1.png'),
    Product(name: 'Product 3', price: 79.99, description: 'Description for product 3', imagePath: 'assets/images/product1.png'),
    Product(name: 'Product 4', price: 69.99, description: 'Description for product 4', imagePath: 'assets/images/product1.png'),
    Product(name: 'Product 5', price: 59.99, description: 'Description for product 5', imagePath: 'assets/images/product1.png'),
    Product(name: 'Product 6', price: 49.99, description: 'Description for product 6', imagePath: 'assets/images/product1.png'),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}
