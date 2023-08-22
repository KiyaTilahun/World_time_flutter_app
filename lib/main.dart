// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables;
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';

void main(List<String> args) => runApp(MaterialApp(
      initialRoute: ('/'),
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        
        '/location': (context) => ChooseLocation(),
      },
    ));
