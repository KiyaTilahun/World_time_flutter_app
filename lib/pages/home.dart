// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables;

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map;

    String? brimage = data['isDatetime'] ? 'day.png' : 'night.png';
    Color? backg = data['isDatetime'] ? Colors.blue : Colors.indigo[700];
    return Scaffold(
      backgroundColor: backg,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$brimage'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result['location'],
                        'isDatetime': result['isDatetime'],
                        'flag': result['flag'],
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.amber,
                  ),
                  label: Text(
                    "Edit Location",
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                          fontSize: 28, letterSpacing: 2, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  data['time'],
                  style: TextStyle(fontSize: 66, letterSpacing: 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
