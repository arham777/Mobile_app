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
        backgroundColor: const Color.fromARGB(255, 19, 19, 19),
        appBar: AppBar(
          title: const Text("abc"),
        ),
        body: 
         const Center(
          //  child: Text('Currency Converter',
          //          style: TextStyle(
          //     color: Colors.white,
          //   ),
          //          ),

              

                 
                 child: TextField( 
                      decoration: InputDecoration(
                        hintText: 'Enter the amount',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Color.fromARGB(255, 18, 253, 194)),
                        ),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.all(Radius.circular(25)),
                        //   borderSide: BorderSide(color: Colors.white),
                        // ),
                      ),
                    ),
              ),
            
          
       ),

      //     TextButton(onPressed: () { 
      //     debugPrint( 'pressed');
          
      //   }, 
        

      //  ),
      
    );
    

  }

}