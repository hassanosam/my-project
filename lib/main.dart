import 'dart:math';

import 'package:finalproject/screens/login.dart';
import 'package:finalproject/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/homepage.dart';

import 'bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'login',
      routes: {
        'login':(context) => login(),
        'SignUp':(context) => SignUp(),
        'homepage':(context) => Myhome(),

      },
      
    );
  }
}

