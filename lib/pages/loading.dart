// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables;


import 'package:flutter/material.dart';
import 'package:my_project/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new WorldTime().getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("hello world"),
    );
  }
}
