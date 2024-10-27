

import 'package:flutter/material.dart';

class TextButtonComp extends StatelessWidget {
  const TextButtonComp({super.key});
  @override
  Widget build(BuildContext context) {
  
  return TextButton(
                onPressed: () {
                  debugPrint('Pressed');
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 236, 236, 236),
                  ),
                  foregroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              );
  }
}