import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    Timer(
      const Duration(seconds: 3),
      ()=> Navigator.pushReplacement(
        context, MaterialPageRoute(
        builder: (context) => WelcomeScreen(), 
      ))
    );
    super.initState();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 20, 20, 20),
        child: const Center(
          child: Text('Welcome',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            
          ),
          )),
        
      ),
    );
  }
}