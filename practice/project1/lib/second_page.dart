// import 'package:flutter/material.dart';

// class SecondPage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.yellow[700],
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 61, 61, 61),
//         title: Text('Second Page',
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//           ),
//         ),
//         actions:[
//           IconButton(onPressed: (){}, icon: Icon(Icons.search,
//             color: Colors.white,
//           ),)
//         ],
//       ),
//       body:
//       Card(
//   margin: EdgeInsets.all(16), // Card margin
//   elevation: 4, // Shadow effect
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10), // Rounded corners
//   ),
//   child: Column(
//     children: [
//       // Top Section with pink background
//       Container(
//         width: double.infinity,
//         padding: EdgeInsets.all(12), // Padding inside the pink background
//         decoration: BoxDecoration(
//           color: Colors.pink, // Background color
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(10),
//             topRight: Radius.circular(10),
//           ),
//         ),
//         child: Text(
//           'Summary', // Title (optional, can be removed)
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//       ),

//       // Main content inside the card
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
//         child: Column(
//           children: [
//             // Subtotal Row
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Subtotal',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   '\$49.50',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 8), // Spacing between rows

//             // Tax & Fees Row
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Tax & Fees',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   '\$2.75',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 8), // Spacing between rows

//             // Delivery Row
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Delivery',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   'Free',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//             Divider(height: 24, thickness: 1), // Divider line

//             // Total Row
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Total',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   '\$52.25',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ],
//   ),
// )

//       //  Card(
//       //   margin: EdgeInsets.all(16),
//       //   shape: RoundedRectangleBorder(
//       //     borderRadius: BorderRadius.circular(16),
//       //   ),
//       //   child: Text('Card',
//       //     style: TextStyle(
//       //       fontSize: 30,
//       //       color: Colors.blue[800],

//       //     )
//       //   ),

//       // )
//     );
//   }

// }

import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Card(
          margin: EdgeInsets.all(16),
          elevation: 4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 16,
                  left: 16,
                  bottom: 8,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                
                child: Text(
                  'Summary',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('SubTotal'),
                    ),
                    Container( 
                      child: Text('49.50'),
                    
                    
                    ),
                  ],
                          
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Tax and Fees'),
                    ),
                    Container( 
                      child: Text('2.75'),
                    
                ),
                
                  ],
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Delivery'),
                    ),
                    Container( 
                      child: Text('Free'),
                    
                ),
                
                  ],
                ),
              ),
              Divider(height: 24, thickness: 1),
              
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Total',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          ),
                      ),
                    ),
                    Container( 
                      child: Text('52.25',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          ),
                      ),
                    
                ),
                
                  ],
                ),
              ),
            ],
          ),
        ),
        
        
         // Ensures the Card is centered
          // Card(
          //   margin: EdgeInsets.all(16), // Margin around the Card
          //   elevation: 4, // Shadow for the Card
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(10), // Rounded corners
          //   ),
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min, // Card height adjusts to content
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       // Header with pink background
          //       Container(
          //         width: double.infinity,
          //         padding: EdgeInsets.all(12),
          //         decoration: BoxDecoration(
          //           color: Colors.pink,
          //           borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(10),
          //             topRight: Radius.circular(10),
          //           ),
          //         ),
          //         child: Text(
          //           'Summary',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 16,
          //           ),
          //         ),
          //       ),

          //       // Card content
          //       Padding(
          //         padding: const EdgeInsets.symmetric(
          //             vertical: 16, horizontal: 12),
          //         child: Column(
          //           children: [
          //             // Subtotal Row
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   'Subtotal',
          //                   style: TextStyle(
          //                     fontSize: 14,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //                 Text(
          //                   '\$49.50',
          //                   style: TextStyle(
          //                     fontSize: 14,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             SizedBox(height: 8),

          //             // Tax & Fees Row
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   'Tax & Fees',
          //                   style: TextStyle(
          //                     fontSize: 14,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //                 Text(
          //                   '\$2.75',
          //                   style: TextStyle(
          //                     fontSize: 14,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             SizedBox(height: 8),

          //             // Delivery Row
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   'Delivery',
          //                   style: TextStyle(
          //                     fontSize: 14,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //                 Text(
          //                   'Free',
          //                   style: TextStyle(
          //                     fontSize: 14,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(height: 24, thickness: 1),

          //             // Total Row
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   'Total',
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //                 Text(
          //                   '\$52.25',
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        
      
    );
  }
}
