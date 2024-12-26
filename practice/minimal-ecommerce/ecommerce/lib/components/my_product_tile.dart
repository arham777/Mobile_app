import 'package:ecommerce/main.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {

  final Product product;

  const MyProductTile({
    super.key,
    required this.product,
    
    });

  // add to cart button pressed
  void addToCart(BuildContext context) {
    // show a dialog box to ask user to confirm to add to cart
    showDialog(
      context: context,
      builder: (context)=> AlertDialog(
        content: Text('Add this item to your cart?'),
        actions: [
          // cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context), 
            child: Text('Cancel')),

          // add to cart button
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);

              context.read<Shop>().addToCart(product);
            },
            child: Text('Yes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
             ),
            ),

        ],
      ),

      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
          //Product Image
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.favorite)),
          ),

          const SizedBox(height: 20,),

          // product name
          Text(product.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 8,),

    
          // product description
          Text(product.description,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.inversePrimary,

            ),
          ),
              ],
            ),

          const SizedBox(height: 18,),
    
          // product price + add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( '\$' + product.price.toStringAsFixed(2),
               style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.inversePrimary,
              
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: const Icon(Icons.add),
                ),
              ),

            ],
          ),
    
        ],
      ),
    
    );
  }
}