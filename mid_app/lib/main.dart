import 'package:flutter/material.dart';
import 'package:mid_app/pages/aboutpage.dart';
import 'package:mid_app/pages/basketpage.dart';
import 'package:mid_app/pages/homepage.dart';
import 'package:mid_app/pages/intropage.dart';
import 'package:mid_app/pages/orderplaced_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Intropage(),
      routes: {
        '/intro': (context) => const Intropage(),
        '/about': (context) => const Aboutpage(),
        '/basket': (context) => const Basketpage(),
        '/home': (context) => const Homepage(),
        '/ordered': (context) => const OrderplacedPage(),
      },
    );
  }
}