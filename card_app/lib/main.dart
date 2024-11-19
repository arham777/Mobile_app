// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Material App Bar'),
//         ),
//         body: Card(
//           color: Colors.amber,
//           elevation: 20.0,
//           margin: const EdgeInsets.all(20.0),
//           child: Column(
//             children: [
              
//               Column(
//                 children: [
//                   Image.asset('assets/images/h1.jpg',
//                   width: 100,
//                   ),
//                 ],
                
//               ),
//               Column(
//                 children: [
//                   Text('Description of the picture'),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Text('Price: 299')
//                 ],
          
//               ),
//               Column(
//                 children: [
//                   Text('Ratings: 5 stars'),
//                 ],
//               )
//             ],
//           ),
//         )

//       ),
//     );
//   }
// }


import 'package:card_app/card.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const SingleChildScrollView(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CardApp(),
                  CardApp(),
                  CardApp(),
                 
                ]
              ),
              Column(
               children: [
                 CardApp(),
                  CardApp(),
                  CardApp(),
              ]
            )
          ]),
        )
              
        ),
    );
  }
}
