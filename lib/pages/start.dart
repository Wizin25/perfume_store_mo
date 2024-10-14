import 'package:flutter/material.dart';
import 'package:perfume_store_mo/pages/login.dart';
import 'package:perfume_store_mo/widget/widget_support.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 750,),
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.only(top: 15,bottom: 15,left: 120,right: 120),
          child: GestureDetector(
            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn()));
                        },
            child: Text("Get Started", style: AppWidget.whiteText(),)),
        ),
      ),
    );
  }
}