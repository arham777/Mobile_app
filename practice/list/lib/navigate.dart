import 'package:flutter/material.dart';
import 'package:list/main.dart';

class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Login'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 145, 86, 9),
        foregroundColor: Colors.white,
        
      ),
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListApp(),
          ),

          );
      },
     
     );
  }
}