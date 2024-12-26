import 'package:ecommerce/components/my_drawer.dart';
import 'package:ecommerce/components/my_product_tile.dart';
import 'package:ecommerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  
  @override

  Widget build(BuildContext context){
    
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        title: const Center(child: Text('Shop page')),
        
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,

      body: ListView(
        children: [ 

          const SizedBox(height: 15),

          Center(
            child: const Text('Pick from a selectedlisyt of premium products',)),
                   
          SizedBox(
          height: 500,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            padding: EdgeInsets.all(15),
            itemBuilder: (context , index){
              // get each individual product from shop
              final product = products[index];
          
              // return a product tile UI
          
              return MyProductTile(product: product);
            },
            
            ),
        ),
        ],
      ),

    );

  }

}