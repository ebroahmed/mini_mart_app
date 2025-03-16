import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Apple", "70", "assets/images/apple.png", Colors.red],
    ["Watermelon", "100", "assets/images/watermelon.png", Colors.green],
    ["Orange", "85", "assets/images/orange.png", Colors.orange],
    ["Banana", "60", "assets/images/banana.png", Colors.yellow],
    ["Pineapple", "80", "assets/images/pineapple-fruit.png", Colors.brown],
    ["Mango", "92", "assets/images/mango.png", Colors.yellow],
  ];

//list of cart item
  final List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calcuateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
