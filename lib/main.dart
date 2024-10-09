import 'package:flutter/material.dart';
import 'package:perfume_store_mo/pages/bottomnav.dart';
import 'package:perfume_store_mo/pages/home.dart';
import 'package:perfume_store_mo/pages/login.dart';

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
      title: 'The Flutter Way',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Bottomnav(),
    );
  }
  
}
