import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:perfume_store_mo/pages/cart.dart';
import 'package:perfume_store_mo/pages/register.dart';
import 'package:perfume_store_mo/pages/start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: const Cart(),
    );
  }
}
