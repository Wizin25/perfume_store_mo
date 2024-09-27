import 'package:flutter/material.dart';

class Home  extends StatefulWidget {
  const Home ({super.key});

  @override
  State< Home > createState() => _HomeState();
}

class _HomeState extends State< Home > {

  int currentIndex = 0;

  List<Widget> screens = [
    Container(
      color: const Color.fromARGB(255, 245, 145, 188),
      child: const Text("Home Screen Widget"),
    ),

    Container(
      color: const Color.fromARGB(255, 245, 145, 188),
      child: const Text("Activity Screen Widget"),
    ),

    Container(
      color: Colors.white,
      child: const Text("Cart Screen Widget"),
    ),
    Container(
      color: Colors.white,
      child: const Text("Profile Screen Widget"),
    )
  ];

  void _onItemTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text("Perfume Store"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Activity"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: "Profile"),
        ]
         ),
      body: screens.elementAt(currentIndex), 
    
    );
  }
}