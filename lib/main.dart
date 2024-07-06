// main.dart
import 'package:flutter/material.dart';
import 'package:myapp/screens/about_screen.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/alam_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "home": (context) => HomeScreen(),
        '/about': (context) => AboutsScreen(),
        '/alam': (context)=> ListAlamScreen(),
      },
      initialRoute: '/home',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alam"),
          centerTitle: true ,
          backgroundColor: Colors.lightGreen,
      ),
      body: HomeScreen(),
      ),
    );
  }
}