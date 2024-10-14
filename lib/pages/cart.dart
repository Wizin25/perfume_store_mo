import 'package:flutter/material.dart';
import 'package:perfume_store_mo/pages/bottomnav.dart';
import 'package:perfume_store_mo/widget/widget_support.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int q = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 45, top: 65, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Bottomnav()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4.0),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 3))),
                      padding: const EdgeInsets.only(
                          left: 150, right: 150, bottom: 10),
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(95, 233, 157, 201), width: 3))),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        "images/BVLGARI-Rose-Goldea.jpg",
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 8,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BVLGARI Rose Goldea"),
                          SizedBox(
                            height: 25,
                          ),
                          Text("size: 50ml"),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "\$229.00",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 60.0),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            if (q > 1) {
                                              q--;
                                            }
                                            setState(() {});
                                          },
                                          child: Container(
                                              child: const Icon(Icons.remove,
                                                  color: Colors.black))),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20),
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Text(q.toString(),
                                            style: AppWidget.boldText()),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            q++;
                                            setState(() {});
                                          },
                                          child: Container(
                                              child: const Icon(Icons.add,
                                                  color: Colors.black))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 590.0),
              Container(
                decoration: BoxDecoration(color: const Color.fromARGB(255, 231, 228, 228)),
                padding: EdgeInsets.all(10),
           
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Total:" + "\$229.00",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Color.fromARGB(95, 233, 157, 201), borderRadius: BorderRadius.circular(15) ),
                      padding: EdgeInsets.only(top: 23, bottom: 23, left: 25, right: 25),
                      child: Text(
                        "Check Out (1)",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
