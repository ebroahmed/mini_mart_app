import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Apple", "70", "assets/images/apples.jpg", Colors.red],
    ["Pineapple", "80", "assets/images/pineapple.jpg", Colors.brown],
    ["Banana", "60", "assets/images/banana.jpg", Colors.yellow],
    ["Watermelon", "100", "assets/images/apples.jpg", Colors.green],
  ];

  get shopItems => _shopItems;
}
