import 'package:flutter/material.dart';
import 'package:portfolio/flash_screen.dart';
// import 'package:portfolio/skills_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlashScreen(),
      // SkillProgressPage(),
      // SkillsPage(),
    );
  }
}

