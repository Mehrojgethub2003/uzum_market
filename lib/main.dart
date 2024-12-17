
import 'package:flutter/material.dart';
//import 'package:online_shop/home/tab/main_page.dart';
import 'splish_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uzum Market',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplishPage(),
    );
  }
}