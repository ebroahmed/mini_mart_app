import 'package:flutter/material.dart';

class MartItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;
  MartItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 80,
            ),
            Text(itemName),
            MaterialButton(
              onPressed: () {},
              color: color[800],
              child: Text(
                'ETB $itemPrice',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
