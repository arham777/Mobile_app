import 'package:flutter/material.dart';

class Basketpage extends StatelessWidget {
  const Basketpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Basket'),
      ),
      body: Column(
        children: [
          const Text('my basket'),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/ordered');
          }, 
          child: const Text('Checkout')
          )
        ],
      ),
    );
  }
} 


