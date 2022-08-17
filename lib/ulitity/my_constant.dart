import 'package:flutter/material.dart';

class MyConstant {
  //field

  static Color bgColor = Colors.green;
  static Color dart = Colors.black;
  static Color active = Colors.pink;

  //Method
  BoxDecoration basicBox() {
    return BoxDecoration(
      color: bgColor.withOpacity(0.3),
    );
  }

  TextStyle h1Style() {
    return TextStyle(
      fontSize: 36,
      color: dart,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h12Style() {
    return TextStyle(
      fontSize: 18,
      color: dart,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle h3Style() {
    return TextStyle(
      fontSize: 14,
      color: dart,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle h3ActiveStyle() {
    return TextStyle(
      fontSize: 16,
      color: dart,
      fontWeight: FontWeight.bold,
    );
  }
}
