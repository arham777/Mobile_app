// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'List Practice',
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(255, 145, 86, 9),
//           title: const Text('List App',
//             style: TextStyle(
//               color: Colors.white
//             )
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ListView.builder(
//             itemCount: 15,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (BuildContext context, int index) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('data $index'),
//               );
//             },
//           ),
//         ),
        
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:list/navigate.dart';
import 'package:list/sqaure.dart';
import 'package:list/stories.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listed App',
      home: Navigate(),
    );
  }
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {

    final values= [
      'box1',
      'box2',
      'box3',
      'box4',
      'box5',
    ];

    final story= [
      'Story1',
      'Story2',
      'Story3',
      'Story4',
      'Story5',
    ];

    return MaterialApp(
      title: 'List App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('List App',
              style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            
        ),
        ),
        body: Column(
          children: [

              //instagram stories

              Container(
                height: 130,
                child: ListView.builder(
                  itemCount: story.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Stories(story: story[index]);
                  },
                ),
              ),

              // Expanded(
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       Stories(),
              //       Stories(),
              //       Stories(),
              //       Stories(),
              //       Stories(),
              //       Stories(),
              //     ],
              //   ),
              // ),

              //instagram posts
              Expanded(
                child: ListView.builder(
                  itemCount: values.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Square(child: values[index]);
                  },
                ),
              ),
            
          ],
        ),
        

        // ListView(
        //   children: [
        //     Square(),
        //     Square(),
        //     Square(),
        //     Square(),
          
        //   ],
        // ),
      ),
    );
  }
}