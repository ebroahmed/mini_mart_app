import 'package:flutter/material.dart';
import 'package:mini_mart_app/pages/home_page.dart';
import 'package:mini_mart_app/pages/intro_page.dart';
import 'package:mini_mart_app/model/cart_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        title: 'Mini-mart_app',
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
