import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/my_portfolio.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1), 
        () {
          Navigator.pushReplacement(
            context, MaterialPageRoute(
              builder: (context)=> const MyPortfolio(),
              )
              );
      }
      );
  }


  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255,80, 165, 145),
      body: Center(
        child: Text('My Portfolio',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),

        ),),
      ),
    );
  }
}