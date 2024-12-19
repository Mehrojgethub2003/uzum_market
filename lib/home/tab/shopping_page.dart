import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: Center(
        child: Text('3'),
      ),
    );
  }
}