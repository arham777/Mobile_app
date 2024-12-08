import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: Text('Second Page',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions:[
          IconButton(onPressed: (){}, icon: Icon(Icons.search),)
        ],
      ),
      body: Center(
        child: Text('Welcome to second page',
          style: TextStyle(
            color: Colors.yellow[100],
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        ),
    );
  }

}