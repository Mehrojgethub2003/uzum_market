import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:online_shop/components/app_image.dart';
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
               SizedBox(
              height: m_h(context) * 1 - 220,
              width: double.infinity,
              child: TabBarView(
                //  children: [
                //   TabBuilderWidget(),
                //  ],
                children: const [
                  TabBuilderWidget(),
                  TabBuilderWidget(),
                ],
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





class TabBuilderWidget extends StatelessWidget {
  const TabBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 200,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      itemBuilder: (context, index) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage([
                  AppImage.imgs2,
                  AppImage.imgs1,
                  AppImage.imgs3,
                  AppImage.imgs4,
                  AppImage.imgs4,
                  AppImage.imgs3,
                  AppImage.imgs1,
                  AppImage.imgs1,
                  AppImage.imgs2,
                  AppImage.imgs4
                ][index]),
                fit: BoxFit.cover),
          ),
          // color: Colors.red,
        );
      },
    );
  }
}




  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 200,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      itemBuilder: (context, index) {
        return Container(
          height: double.infinity,
          width: double.infinity, 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage([
                  AppImage.imgs2,
                  AppImage.imgs1,
                  AppImage.imgs3,
                  AppImage.imgs4,
                  AppImage.imgs4,
                  AppImage.imgs3,
                  AppImage.imgs1,
                  AppImage.imgs1,
                  AppImage.imgs2,
                  AppImage.imgs4
                ][index]),
                fit: BoxFit.cover),
          ),
          // color: Colors.red,
        );
      },
    );
  }

