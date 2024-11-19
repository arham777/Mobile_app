// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     var arrayItems = [
//       'hellow',
//       'hellow',
//       'hellow',
//       'hellow',
//       'hellow',
//     ];

//     // return MaterialApp(
//     //    home: Scaffold(
//     //   body: ListView.separated(
//     //     // scrollDirection: Axis.horizontal,
//     //     separatorBuilder: (context, index) => const Divider(),
//     //     itemBuilder: (context, index) {
//     //       return Text(arrayItems[index]);
//     //     },
//     //     itemCount: arrayItems.length,

//     //   ),
//     // ),
//     // );

//     //  return MaterialApp(
//     //    home: Scaffold(
//     //   body: ListView.separated(
//     //     separatorBuilder: (context, index) => const Divider(),
//     //     itemBuilder: (context, index) {
//     //       return Text(arrayItems[index],
//     //       style: TextStyle(
//     //         color: Color.fromARGB(255, 0, 0, 0),
//     //         fontSize: 26,
//     //         fontWeight: FontWeight.bold,
//     //       ),);

//     //     },
//     //     itemCount: arrayItems.length,

//     //   ),

//     // ),
//     // );
//     // return MaterialApp(
//     //    home: Scaffold(
//     //   body: ListView.builder(
//     //     // scrollDirection: Axis.horizontal,
//     //     itemCount: arrayItems.length,
//     //     itemBuilder: (context, index) {
//     //       return ListTile(
//     //         title: Text(arrayItems[index]),
//     //       );
//     //     },

//     //   ),
//     // ),
//     // );

//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 157, 10),
          title: const Text('List App',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body:
         Container(
            color: const Color.fromARGB(255, 202, 202, 202),
           child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 3,
                thickness: 3,
                color: Color.fromARGB(255, 255, 157, 10),
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person,
                  color: Color.fromARGB(207, 1, 167, 233),
                  )),
                  tileColor: const Color.fromARGB(255, 0, 126, 175),
                  title: Text(
                    "eello ${index*2}",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text('moye moye'),
                ),
              );
            },
                   ),
         ),
      ),
    );
  }
}
