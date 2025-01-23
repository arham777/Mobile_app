import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intro page'),
      ),
      body: Column(
        children: [
          Image.network('https://th.bing.com/th?id=OIP.c6Tbz7IbCn9bVXzXQSOqhgHaFN&w=297&h=209&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2'),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/about');
          }, 
          child: const Text('Lets Continue')
          ),
        ],
      ),
    );
  }
}
