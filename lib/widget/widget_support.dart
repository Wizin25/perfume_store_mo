import 'package:flutter/material.dart';

class AppWidget{

  static TextStyle boldText(){
    return const TextStyle(
      color: Colors.black,
      fontSize: 23.0,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle headLineText(){
    return const TextStyle(
      color: Colors.black,
      fontSize: 23.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle lightText(){
    return const TextStyle(
      color: Colors.black38,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle whiteText(){
    return const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle pinkText(){
    return const TextStyle(
      color: Color.fromARGB(95, 233, 157, 201),
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    );
  }
}
