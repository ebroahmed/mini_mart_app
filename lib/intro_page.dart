import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_mart_app/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    // Set a timer to navigate to the ExplorePage after 3 seconds
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 80, right: 80, bottom: 40, top: 40),
            child: Image.asset('assets/images/fruits.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "You can get fresh fruits from our corner store",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Fresh item everyday",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
