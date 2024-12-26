import 'package:flutter/material.dart';
import 'package:themes_app/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Text('Style of themes',
          style: mTextStyle(),
        ),
      ),
    );
  }

}