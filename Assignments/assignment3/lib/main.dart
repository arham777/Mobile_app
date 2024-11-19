
// import 'package:flutter/material.dart';

// void main()
// {
//     runApp( const MyApp());
// }

// class MyApp extends StatelessWidget{
//   const MyApp ({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Assignment3'),
//         ),
//         body:  SingleChildScrollView(
//           child: Column(
//            Padding(
//             padding: const EdgeInsets.all(14.0),
//              child: Column(
//                children: [
//                  Container(
//                   width: 200,
//                   height: 80,
//                   color: Color.fromARGB(255, 65, 65, 65),
//                   child: Text('data'),
//                            ),
//                   Container(
//                     width: 200,
//                     height: 200,
//                     color: Color.fromARGB(255, 184, 13, 13),
//                     child: Text('data'),
//                   ),
//                ],
//              ),
//           ),
          
//           Row(
//             children: [
//               Container(
//                 width: 200,
//                 height: 200,
//                 color: Color.fromARGB(255, 44, 119, 119),
//                 ),
//             ],
//           ),
//                 ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Assignment3'),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(14.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: 200,
//                   height: 80,
//                   color: const Color.fromARGB(255, 65, 65, 65),
//                   alignment: Alignment.centerLeft,
//                   child: const Padding(
//                     padding: EdgeInsets.only(left: 8.0),
//                     child: Text(
//                       'Nike Shoes',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10), // Add space between containers
//                 Container(
//                   width: 200,
//                   height: 200,
//                   color: const Color.fromARGB(255, 184, 13, 13),
//                   alignment: Alignment.centerLeft,
//                   child: const Padding(
//                     padding: EdgeInsets.only(left: 12.0),
//                     child: Text(
//                       'Street fashion meets hoops authenticity in the distinctly modern Nike Court Vision Alta. The detailed upper features an angled heel, crisp leather and sparkly gold glitter Swoosh logos to help you live out loud.',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10), // Add space before Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start, // Align Row to the left
//                   children: [
//                     // First Icon + Text Column
//                     Container(
//                       width: 200,
//                       height: 100,
//                       color: const Color.fromARGB(255, 44, 119, 119),
//                       alignment: Alignment.center,
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.home, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Home', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.account_circle, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Profile', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.add_ic_call_rounded, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Call', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Assignment3'),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(14.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Row containing text and image
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Text Column on the left
//                     Expanded(
//                       flex: 2,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: double.infinity,
//                             height: 80,
//                             color: const Color.fromARGB(255, 65, 65, 65),
//                             alignment: Alignment.centerLeft,
//                             child: const Padding(
//                               padding: EdgeInsets.only(left: 8.0),
//                               child: Text(
//                                 'Nike Shoes',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Container(
//                             width: double.infinity,
//                             height: 200,
//                             color: const Color.fromARGB(255, 184, 13, 13),
//                             alignment: Alignment.centerLeft,
//                             child: const Padding(
//                               padding: EdgeInsets.all(12.0),
//                               child: Text(
//                                 'Street fashion meets hoops authenticity in the distinctly modern Nike Court Vision Alta. The detailed upper features an angled heel, crisp leather, and sparkly gold glitter Swoosh logos to help you live out loud.',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     // Image on the right
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         width: 150,
//                         height: 200,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(10),
//                           image: const DecorationImage(
//                             image: AssetImage('assets/images/img.jpg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10), // Add space before Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     // Icons row
//                     Container(
//                       width: 200,
//                       height: 100,
//                       color: const Color.fromARGB(255, 44, 119, 119),
//                       alignment: Alignment.center,
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.home, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Home', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.account_circle, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Profile', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.add_ic_call_rounded, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Call', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Assignment3'),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(14.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: double.infinity,
//                             height: 80,
//                             color: const Color.fromARGB(255, 65, 65, 65),
//                             alignment: Alignment.centerLeft,
//                             child: const Padding(
//                               padding: EdgeInsets.only(left: 8.0),
//                               child: Text(
//                                 'Nike Shoes',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   ),
                                
//                               ),

//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Container(
//                             width: double.infinity,
//                             height: 200,
//                             color: const Color.fromARGB(255, 184, 13, 13),
//                             alignment: Alignment.centerLeft,
//                             child: const Padding(
//                               padding: EdgeInsets.all(12.0),
//                               child: Text(
//                                 'Street fashion meets hoops authenticity in the distinctly modern Nike Court Vision Alta. The detailed upper features an angled heel, crisp leather, and sparkly gold glitter Swoosh logos to help you live out loud.',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     Expanded(
//                       flex: 1,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: 150,
//                             height: 200,
//                             decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(10),
//                               image: const DecorationImage(
//                                 image: AssetImage('assets/images/img.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           // Title and description under the image
//                           const Text(
//                             'Nike Court Vision Alta',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           const Text(
//                             'A stylish choice for streetwear and sports.',
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10), // Add space before Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     // Icons row
//                     Container(
//                       width: 200,
//                       height: 100,
//                       color: const Color.fromARGB(255, 44, 119, 119),
//                       alignment: Alignment.center,
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.home, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Home', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.account_circle, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Profile', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.add_ic_call_rounded, color: Colors.white),
//                               SizedBox(height: 4),
//                               Text('Call', style: TextStyle(color: Colors.white)),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20), // Add space before social media icons
//                 // Social Media Icons
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Column(
//                       children: [
//                         Row(
//                           children: [
//                             IconButton(
//                               icon: const Icon(Icons.facebook, color: Colors.blue),
//                               onPressed: () {
//                                 // Action for Facebook
//                               },
//                             ),
//                           ],
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: const Text('Facebook', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
//                           ),

//                         ),
                        
//                         IconButton(
//                           icon: const Icon(Icons.g_mobiledata, color: Colors.red),
//                           onPressed: () {
//                             // Action for Google
//                           },
//                         ),
//                         const Text('Google', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
//                         IconButton(
//                           icon: const Icon(Icons.g_mobiledata, color: Colors.lightBlue),
//                           onPressed: () {
//                             // Action for Twitter
//                           },
//                         ),
//                         const Text('Twitter', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


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
        appBar: AppBar(
          title: const Text('Assignment3'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 80,
                            color: const Color.fromARGB(255, 65, 65, 65),
                            alignment: Alignment.centerLeft,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Center(
                                child: Text(
                                  'Nike Shoes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            height: 200,
                            color: const Color.fromARGB(255, 184, 13, 13),
                            alignment: Alignment.centerLeft,
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Street fashion meets hoops authenticity in the distinctly modern Nike Court Vision Alta. The detailed upper features an angled heel, crisp leather, and sparkly gold glitter Swoosh logos to help you live out loud.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/img.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Nike Court Vision Alta',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'A stylish choice for streetwear and sports.',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      color: const Color.fromARGB(255, 44, 119, 119),
                      alignment: Alignment.center,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home, color: Colors.white),
                              SizedBox(height: 4),
                              Text('Home', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.account_circle, color: Colors.white),
                              SizedBox(height: 4),
                              Text('Profile', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_ic_call_rounded, color: Colors.white),
                              SizedBox(height: 4),
                              Text('Call', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Social Media Icons with text on the right
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.facebook, color: Colors.blue),
                          onPressed: () {
                            // Action for Facebook
                          },
                        ),
                        const Text('Facebook', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.g_mobiledata, color: Colors.red),
                          onPressed: () {
                            // Action for Google
                          },
                        ),
                        const Text('Google', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.g_mobiledata, color: Colors.lightBlue),
                          onPressed: () {
                            // Action for Twitter
                          },
                        ),
                        const Text('Twitter', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
