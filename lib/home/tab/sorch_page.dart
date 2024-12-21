import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class SorchPage extends StatefulWidget {
  const SorchPage({super.key});

  @override
  State<SorchPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SorchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          width: m_w(context) * 0.9,
          height: m_w(context) * 0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.shade300),
          child: Center(
            child: Row(
              children: [
                const Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: 300,
                  padding: const EdgeInsets.only(bottom: 5),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Maxsulot va toiflarni qidirish",
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),
       
        ),
      ),
     
    );
  }
}
