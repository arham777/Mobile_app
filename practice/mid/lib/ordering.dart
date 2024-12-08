import 'package:flutter/material.dart';

class Ordering extends StatelessWidget {
  const Ordering({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ordering'),
        // leading: Icon(
        //   Icons.more_horiz_outlined
        // ),
        actions: [
          Icon(
            Icons.add_shopping_cart_rounded,

          ),

          Icon(
            Icons.more_horiz_outlined,

          ),

        ],
        
      ),
      body: Column(
        children: [
          Text('Hello Tony, What fruit salad combo do you want today',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
      ),
      ),

        

        ],
      )
      
    );
  }

}