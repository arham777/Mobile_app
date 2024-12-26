import 'package:flutter/material.dart';

TextStyle mTextStyle(
  {
    Color textColor= Colors.green,
    FontWeight fontWeight = FontWeight.bold,
    fontSize= 24,

  }
) {
  return TextStyle(
    color: textColor, fontWeight: fontWeight, fontSize: fontSize
  );
}

