import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
const Intro ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction"),
      ),
      body: Column(
        children: [
          Text('Welcome',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            
          ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}