import 'package:flutter/material.dart';

class Home  extends StatefulWidget {
  const Home ({super.key});

  @override
  State < Home > createState() => _HomeState();
}

class _HomeState extends State< Home > {

  int currentIndex = 0;

  List<Widget> screens = [
    Container(
      color: Colors.grey,
      child: const Text("Home Screen Widget"),
    ),

    Container(
      color: Colors.grey,
      child: const Text("Activity Screen Widget"),
    ),

    Container(
      color: Colors.grey,
      child: const Text("Cart Screen Widget"),
    ),
    Container(
      color: Colors.grey,
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
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 190, 193, 196),
        title: const Text (
          "Perfume Store",
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        leading: const Icon(Icons.menu),

        actions:<Widget> [
          IconButton(onPressed: (){
            //Do something here
          }, icon: const Icon(Icons.search)),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        
        items: const [   
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Activity"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: "Profile"),
        ],

      ),
      body: screens.elementAt(currentIndex), 
    
    );
  }
}