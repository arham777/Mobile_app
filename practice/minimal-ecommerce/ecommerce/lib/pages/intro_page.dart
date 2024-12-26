// ignore_for_file: deprecated_member_use

// import 'package:ecommerce/pages/shop_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            // logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 10),

            // title
            Text('Minimal Shop',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            // Subtitle
            Text('Premium Quality Products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 10,
              ),
            ),

            const SizedBox(height: 20),

            // Button

            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/shop_page');
                // Navigator.push(
                //   context, 
                //   MaterialPageRoute(builder: (context)=> ShopPage()
                //   ),
                //   );
              }, child: Icon(Icons.arrow_forward,
                color: Theme.of(context).colorScheme.inversePrimary,

              ),
              
              ),
              
          ],
        
        ),
      ),
    );
  }

}