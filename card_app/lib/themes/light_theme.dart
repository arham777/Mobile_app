import 'package:flutter/material.dart';

TextStyle mTextStyle(
  {
    Color color= const Color.fromARGB(255, 255, 255, 255),
    fontSize= 16,
    FontWeight fontWeight= FontWeight.bold,

  }
){
  return TextStyle(
    color: color, fontSize: fontSize, fontWeight: fontWeight
  );
}

TextStyle infoStyle(
  {
    Color color= Colors.grey,
    fontSize= 10,

  }
){
  return TextStyle(
    color: color, fontSize: fontSize,
  );
}