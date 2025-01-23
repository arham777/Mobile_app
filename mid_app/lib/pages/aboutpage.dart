import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://th.bing.com/th/id/OIP.c6Tbz7IbCn9bVXzXQSOqhgHaFN?rs=1&pid=ImgDetMain',
            
          ),

        const SizedBox(
          height: 10,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                  hintText: 'Arham Athar',
                ),
                onChanged: (text) {
                },
              ),
              const SizedBox(height: 20),
              
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password',
                  hintText: 'Password',
                ),
                onChanged: (text) {
                },
              ),
              
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
                 child: const Text('Start Ordering')
                 ),
            ],
          ),
        ),

        ],
      ),
    );
  }
}