import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:perfume_store_mo/pages/bottomnav.dart';
import 'package:perfume_store_mo/pages/forgotpas.dart';
import 'package:perfume_store_mo/pages/register.dart';
import 'package:perfume_store_mo/pages/start.dart';
import 'package:perfume_store_mo/widget/widget_support.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "", password = "";
  final _formkey = GlobalKey<FormState>();

  TextEditingController useremailcontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "No User Found for that Email",
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        )));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "Wrong Password Provided by User",
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Start()));
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Container(
            //set background image for login here
            /*decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/lg.png"),
              fit: BoxFit.cover,
            ),
          ),*/
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Text(
                    "Welcome!",
                    style: AppWidget.boldText(),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  TextFormField(
                    controller: useremailcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    controller: userpasswordcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_outlined)),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Forgotpas()));
                    },
                    child: Container(
                        margin: const EdgeInsets.only(left: 225),
                        child: Text("Forgot Password?",
                            style: AppWidget.lightText())),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          email = useremailcontroller.text;
                          password = userpasswordcontroller.text;
                        });
                      }
                      userLogin();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 1))),
                      padding: const EdgeInsets.only(
                          left: 159, right: 159, top: 15, bottom: 15),
                      child: Text("Login", style: AppWidget.whiteText()),
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const Text("Or"),
                  
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 60),
                      child: Row(
                        children: [
                          const Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Register()));
                            },
                            child: Container(
                                child: Text(
                              "Register Now",
                              style: AppWidget.pinkText(),
                            )),
                          ),
                        ],
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
