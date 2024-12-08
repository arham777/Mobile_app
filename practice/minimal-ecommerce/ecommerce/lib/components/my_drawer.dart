import 'package:ecommerce/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  const MyDrawer({super.key});

  @override

  Widget build(BuildContext context){
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
               // drawer header: logo
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Icon(
                Icons.shopping_bag,
                size: 64,
                color: Theme.of(context).colorScheme.inversePrimary,
                ),
            ),

            const SizedBox(height: 25,),

            // shop tile
            MyListTile(
              text: 'Shop', 
              icon: Icons.home, 
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/shop_page');
                }
              ),


            // cart tile
            MyListTile(
              text: 'Cart', 
              icon: Icons.shopping_cart, 
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/cart_page');
                }
              ),

            ],
          ),

          // exit tile
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: MyListTile(
              text: 'Exit', 
              icon: Icons.exit_to_app, 
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/intro_page', (route)=> false);
                }
              ),
          ),

        ],
      ),

    );
  }
}