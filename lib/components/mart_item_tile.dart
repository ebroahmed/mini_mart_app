import 'package:flutter/material.dart';

class MartItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  const MartItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        decoration: BoxDecoration(
          color: color(100),
        ),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 64,
            )
          ],
        ),
      ),
    );
  }
}
