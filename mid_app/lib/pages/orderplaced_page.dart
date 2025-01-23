import 'package:flutter/material.dart';

class OrderplacedPage extends StatelessWidget {
  const OrderplacedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('COngatulations'),
      
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/home');
          }, child: const Text('Continue Shopping'),
          )
        ],
      ),
    );
  }
}

