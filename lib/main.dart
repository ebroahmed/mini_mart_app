import 'package:flutter/material.dart';
import 'package:mini_mart_app/home_page.dart';
import 'package:mini_mart_app/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini-mart_app',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
