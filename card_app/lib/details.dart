
import 'package:flutter/material.dart';

class DetailApp extends StatelessWidget {
  const DetailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Detail App'),
          backgroundColor: const Color.fromARGB(255, 184, 184, 184),
        ),
        body: Column(
          children: [
            Image.asset('assets/images/h1.jpg',
            // width: 100,
            ),
            const Text('Description of the picture',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 10,),
            const Text('Price: 299',
            style: TextStyle(
              fontSize: 16,

            ),
            ),

            const SizedBox(height: 6,),
            const Text('Rating: 5',
            style: TextStyle(
              fontSize: 16,

            ),
            ),
          ],
        ),
    ),
    );
}
}