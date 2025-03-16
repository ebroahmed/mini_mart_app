import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Apple", "70", "assets/images/apples.jpg", Colors.red],
    ["Pineapple", "80", "assets/images/pineapple-fruit.jpg", Colors.brown],
    ["Banana", "60", "assets/images/banana.jpg", Colors.yellow],
    ["Watermelon", "100", "assets/images/watermelon.jpg", Colors.green],
  ];

//list of cart item
  List _cartItems = [];

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
