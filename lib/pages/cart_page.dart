import 'package:flutter/material.dart';
import 'package:mini_mart_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Consumer<CartModel>(builder: (context, value, child) {
        return Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: value.cartItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          leading: Image.asset(value.cartItems[index][2]),
                          title: Text(value.cartItems[index][0]),
                          subtitle: Text('ETB' + value.cartItems[index][1]),
                          trailing: IconButton(
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .removeFromCart(index);
                            },
                            icon: Icon(Icons.delete_outline),
                          ),
                        ),
                      );
                    }))
          ],
        );
      }),
    );
  }
}
