// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //            backgroundColor: Color.fromARGB(255, 0, 0, 0),
// //         body: Center(child:
// //          Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //            children: [
// //              Text('ddd',
// //              style: TextStyle(
// //               color: Color.fromARGB(255, 96, 24, 155)
// //              ),),
// //            ],   
// //          )),
// //          Container(
// //           margin: EdgeInsets.all(15.0),
// //             decoration: BoxDecoration(
// //             color: Color.fromARGB(255, 246, 124, 43),
// //               border: Border.all(color: const Color.fromARGB(255, 62, 112, 202), width: 15.0),
// //             ),
// //            padding: EdgeInsets.all(15.0),
// //           child: SizedBox(
// //             width: double.infinity,
// //             height: double.infinity,
// //             child: ColoredBox(color: Color.fromARGB(255, 219, 219, 219),
// //             ),
            
// //             ),
        
// //         ),
        
    
// //       ),
      
// //     );

// //   }
// // }



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLutter assignment 2',
                style: TextStyle(color: Color.fromARGB(255, 248, 248, 248)),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 246, 124, 43),
                  border: Border.all(
                    color: const Color.fromARGB(255, 62, 112, 202),
                    width: 15.0,
                  ),
                ),
                padding: EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity, // Adjust this width value
                  height: 500, // Adjust this height value
                  child: ColoredBox(
                    color: Color.fromARGB(255, 219, 219, 219),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // appBar: AppBar(
//         //   title: const Text('Circular Nested Boxes Demo'),
//         // ),
//         body: Center(
//           child: Container(
//             width: 300,
//             height: 200,
//             decoration:  BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.circular(50),
//             ),
//             padding: const EdgeInsets.all(10),
//             child: Container(
//               decoration:  BoxDecoration(
//                 color: Colors.blue,
//               borderRadius: BorderRadius.circular(50),
//               ),
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                 decoration:  BoxDecoration(
//                   color: Colors.orange,
//               borderRadius: BorderRadius.circular(50),
//                 ),
//                 padding: const EdgeInsets.all(10),
//                 child: Container(
//                   decoration:  BoxDecoration(
//                     color: Colors.green,
//               borderRadius: BorderRadius.circular(50),
//                   ),
//                   padding: const EdgeInsets.all(10),
//                   child: Container(
//                     decoration:  BoxDecoration(
//                       color: Colors.grey,
//               borderRadius: BorderRadius.circular(50),
//                     ),
//                     padding: const EdgeInsets.all(10),
//                     child: Container(
//                       decoration:  BoxDecoration(
//                         color: Colors.white,
//               borderRadius: BorderRadius.circular(50),
//                       ),
//                       padding: const EdgeInsets.all(10),
//                       child: const Center(
//                         child: Text(
//                           'This is\nInternal Box',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }