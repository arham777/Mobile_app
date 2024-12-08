import 'package:flutter/material.dart';
import 'package:mid/ordering.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    Text('What is your First name?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
              
                 Text('Tony',
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
                builder: (context) => const Ordering(),
              ),
              );
            },
            child: const Text('Start Ordering'),
            
        ),
      
            ],
          ),
            
        );

  }
}