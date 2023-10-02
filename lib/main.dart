import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Login',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
                16), // all = 사방 , only = 특정 위치 top, bottom, left, right
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Email"),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Password"),
                  obscureText: true,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 40),
                  child: ElevatedButton(onPressed: () {}, child: Text("login")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
