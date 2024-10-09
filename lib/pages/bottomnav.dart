import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:perfume_store_mo/pages/activity.dart';
import 'package:perfume_store_mo/pages/cart.dart';
import 'package:perfume_store_mo/pages/home.dart';
import 'package:perfume_store_mo/pages/profile.dart';


class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Activity activity;
  late Cart cart;
  late Profile profile;

@override
  void initState() {
    homepage = Home();
    activity = Activity();
    cart = Cart();
    profile = Profile();
    pages = [homepage, activity, cart, profile];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: const Color.fromARGB(255, 238, 235, 235),
        animationDuration: Duration(milliseconds: 300),
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
        Icon(
          Icons.home, color: Colors.black,
        ),
        Icon(
          Icons.message, color: Colors.black,
        ),
        Icon(
          Icons.shopping_cart, color: Colors.black,
        ),
        Icon(
          Icons.manage_accounts, color: Colors.black,
        )
      ]),
      body: pages[currentTabIndex] ,
    );
  }
}