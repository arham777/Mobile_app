import 'package:flutter/material.dart';
import 'package:mid/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            
            backgroundColor: Colors.amber,
            title: const Text('Mid-Practice'),
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                color: Colors.cyan,
              ),
      
            const Padding(
              padding:  EdgeInsets.all(24.0),
              child: Column(
                children: [
                    Text('Get the Freshest Fruit Salad Combo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
              
                 Text('We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                ],
              ),
            ),
      
            
            ElevatedButton(
             onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                builder: (context) => const SecondPage(),
              ),
              );
            },
            child: const Text("Let's Continue"),
            
        ),
      
            ],
          ),
           
            
        );


  }

}