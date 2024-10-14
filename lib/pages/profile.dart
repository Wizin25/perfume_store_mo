import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProState();
}

class _ProState extends State<Profile> {
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test API"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          final user = users[index];
          final email = user['email'];
          final name = user['name']['first'];
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),

            title: Text(name.toString()),
            subtitle: Text(email),
          );
      }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }

  void fetchUsers() async{
    print("fetch users called");
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    
    setState(() {
      users = json['results'];
    });
    print("fetch users complete");
  }
}