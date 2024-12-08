import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple[600],
          title: Center(
            child: Text('My App Bar',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 0,
          leading: Icon(Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(onPressed: () {},
              icon: Icon(Icons.logout,
                color: Colors.white,
              ),  
            )
          ],

        ),
        body: Center(
          child: Container(
            height: 220,
            width: 220,
            decoration: BoxDecoration(
            color: Colors.purple[400],
            borderRadius: BorderRadius.circular(20),

            ),
            child: Icon(
              Icons.favorite,
              size: 40,
              color: Colors.white,
            )
          ),
        ),
      ),
    );
  }

}