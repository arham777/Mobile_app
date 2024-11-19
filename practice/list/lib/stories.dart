import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String story;

  Stories ({required this.story});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 244, 54, 158),
                        ),
                        child: Center(child: Text(story,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),)),
                    ),
                  );
  }
}