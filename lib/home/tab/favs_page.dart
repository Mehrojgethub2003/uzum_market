import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class  FavsPage extends StatefulWidget {
  const FavsPage({super.key});

  @override
  State<FavsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavsPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
     body: Column(
      children: [
       Container(
        height: 300,
        color: Colors.blue,
       ),
       DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(tabs: 
            [
              Tab(child: Text("Sahifa"),
              
              ),
              Tab(child: Text("Menu"),),
              Tab(child: Text("data"),),
              
            
            ]
            ),
           Container(
             height: 200,
             width: double.infinity,
             child: TabBarView(
              children: [
              Container(
                child :Container(
                  height: m_h(context)*0.26,
                  width: m_w(context).toDouble(),
                  color: Colors.green,
                  
                ),
              ),
               Container(
                child :Container(
                  height: m_h(context)*0.26,
                  width: m_w(context).toDouble(),
                  color: Colors.blue,

                ),
              
              ),
               Container(
                child :Container(
                  height: m_h(context)*0.26,
                  width: m_w(context).toDouble(),
                  color: Colors.red,
                ),
              ),
             
              ],
             ),
           ),
          ],
        ))
      ],
     )
      
    );
  }
}