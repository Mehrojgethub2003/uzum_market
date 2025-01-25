import 'package:flutter/material.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Xabarnomalar",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              "Bu yerda barcha voqealar aks etadi",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

//stf
