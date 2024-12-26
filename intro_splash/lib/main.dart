import 'package:flutter/material.dart';

import 'package:intro_splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Minimal App',
//       theme: ThemeData(
//         primarySwatch: Colors.grey,
//         textTheme: TextTheme(
//           bodyMedium: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.w300),
//         ),
//       ),
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => IntroPage()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Text(
//           'Welcome',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 24,
//             fontWeight: FontWeight.w300,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class IntroPage extends StatefulWidget {
//   @override
//   _IntroPageState createState() => _IntroPageState();
// }

// class _IntroPageState extends State<IntroPage> {
//   final TextEditingController _controller = TextEditingController();

//   void _navigateToNextScreen() {
//     if (_controller.text.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => SecondScreen(text: _controller.text),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter some text!')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           'Intro Page',
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 labelText: 'Enter text',
//                 labelStyle: TextStyle(fontWeight: FontWeight.w300),
//                 border: UnderlineInputBorder(),
//               ),
//               style: TextStyle(fontWeight: FontWeight.w300),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(vertical: 12),
//                 textStyle: TextStyle(fontWeight: FontWeight.w300),
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//               ),
//               onPressed: _navigateToNextScreen,
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   final String text;

//   SecondScreen({required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           'Result',
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
//         ),
//       ),
//     );
//   }
// }
