import 'package:flutter/material.dart';
import 'package:project1/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage ({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text('First page',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(
              builder: (context) => SecondPage(),
            
            ),
            );
          },
          child: Text('Go to second page'),
          ),
      ),
    );
  }
}