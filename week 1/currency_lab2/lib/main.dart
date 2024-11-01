// import 'package:flutter/material.dart';

// void main() {
//   runApp(
// // Suggested code may be subject to a license. Learn more: ~LicenseLog:210181591.
// // Suggested code may be subject to a license. Learn more: ~LicenseLog:2876178321.
//       MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('eeloo Developers'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: Text('Welcome to Flutter'),
//       ),
//     ),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:currency_lab2/currency_converter_page.dart';

void main() {
  runApp(checking());
}

class checking extends StatelessWidget {
  const checking({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterPage(),
    );
  }
}
    


    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('eeloo Developers'),
    //     ),
    //     body: Container(
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           colors: [
    //             Color.fromARGB(255, 229, 143, 204), // Start color
    //             Color.fromRGBO(109, 1, 52, 1), // End color
    //           ],
    //           begin: Alignment.topLeft, // Gradient starts from the top left
    //           end: Alignment.bottomRight, // Gradient ends at the bottom right
    //         ),
    //       ),
    //       child: Center(
    //         child: Text(
    //           'Hello, Flutter!',
    //           style: TextStyle(
    //             fontSize: 24,
    //             fontWeight: FontWeight.bold,
    //             color: Color.fromARGB(255, 236, 236, 236),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );

