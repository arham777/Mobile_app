import 'package:ecommerce/components/my_drawer.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        backgroundColor: Colors.transparent,

        title: const Center(child: Text('Cart Page')),
      ),

      drawer: const MyDrawer(),

      body: const Text('Cart page'),
    );

  }

}