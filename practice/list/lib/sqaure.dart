import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String child;

  Square({required this.child});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: const Color.fromARGB(255, 4, 219, 173),
                child: Center(child: Text(child,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),)),
              ),
            );
  }
}