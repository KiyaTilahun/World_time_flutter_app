// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyFirst()));

class MyFirst extends StatelessWidget {
  const MyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("My First Flutter"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/balcha.jpeg'),
              radius: 40,
            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.amber[800],
          ),
          Text(
            "NAME",
            style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
          ),
          SizedBox(height: 10),
          Text(
            "Kiya Tilahun",
            style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Text(
            "CURRENT FLUTTER LEVEL",
            style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
          ),
          SizedBox(height: 10),
          Text(
            "1",
            style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text(
                "kiyatilahun0@gmail.com",
                style: TextStyle(color: Colors.grey[400], letterSpacing: 2.0),
              )
            ],
          )
        ]),
      ),
    );
  }
}
