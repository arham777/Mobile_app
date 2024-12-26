import 'package:flutter/material.dart';
import 'package:navigation/splash_screen.dart';
// import 'package:navigation/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // const WelcomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key});
   final String name ;
   const MyHomePage(this.name, {super.key, required String name});

  



  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   

  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     // _counter++;
  //   });
  // }



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          // title: Text(widget.title),
        ),
        body: Text('Welcome ${widget.name}')
        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       SingleChildScrollView(
        //         scrollDirection: Axis.horizontal,
        //         child: Row(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: InkWell(
        //                 onTap: () {
        //                   Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: (context) => const WelcomeScreen()),
        //                   );
        //                 },
        //                 onDoubleTap: () {
        //                   debugPrint('pressed');
        //                 },
        //                 child: Container(
        //                   color: Colors.pink,
        //                   width: 100,
        //                   height: 100,
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.blue,
        //                 width: 100,
        //                 height: 100,
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.orange,
        //                 width: 100,
        //                 height: 100,
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.brown,
        //                 width: 100,
        //                 height: 100,
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.cyan,
        //                 width: 100,
        //                 height: 100,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       SingleChildScrollView(
        //         scrollDirection: Axis.horizontal,
        //         child: Row(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.pink,
        //                 width: 100,
        //                 height: 100,
        //                 child: Icon(
        //                   Icons.holiday_village,
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.blue,
        //                 width: 100,
        //                 height: 100,
        //                 child: Image.asset(
        //                   'assets/images/home.png',
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.orange,
        //                 width: 100,
        //                 height: 100,
        //                 child: Image.asset(
        //                   'assets/images/home.png',
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.brown,
        //                 width: 100,
        //                 height: 100,
        //                 child: Image.asset(
        //                   'assets/images/home.png',
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 color: Colors.cyan,
        //                 width: 100,
        //                 height: 100,
        //                 child: Image.asset(
        //                   'assets/images/home.png',
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               color: Colors.pink,
        //               width: 100,
        //               height: 100,
        //               child: Image.asset(
        //                 'assets/images/home.png',
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               color: Colors.blue,
        //               width: 100,
        //               height: 100,
        //               child: Image.asset(
        //                 'assets/images/home.png',
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               color: Colors.orange,
        //               width: 100,
        //               height: 100,
        //               child: Image.asset(
        //                 'assets/images/home.png',
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               color: Colors.brown,
        //               width: 100,
        //               height: 100,
        //               child: Image.asset(
        //                 'assets/images/home.png',
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               color: Colors.cyan,
        //               width: 100,
        //               height: 100,
        //               child: Image.asset(
        //                 'assets/images/home.png',
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // )

// Container(
//         width: double.infinity,
//         height: 100,
// // Suggested code may be subject to a license. Learn more: ~LicenseLog:3903471363.
//         child: Image.asset('assets/images/home.png',),
//       ),
        );
  }
}
