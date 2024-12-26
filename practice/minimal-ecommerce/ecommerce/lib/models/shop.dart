import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // Products for sale
  final List<Product> _shop = [

    Product(
      name: "Product1", 
      description: "product1 details",
      // imagePath: imagePath,
      price: 999
      ),

      Product(
      name: "Product2", 
      description: "product2 details",
      // imagePath: imagePath,
      price: 999
      ),

      Product(
      name: "Product3", 
      description: "product3 details",
      // imagePath: imagePath,
      price: 999
      ),

      Product(
      name: "Product4", 
      description: "product4 details",
      // imagePath: imagePath,
      price: 999
      ),

  ];

  // user cart
  List<Product> _cart= [];

  // get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  // add items to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove items from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

}