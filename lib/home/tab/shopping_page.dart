import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_shop/components/app_image.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
    appBar: AppBar(
  
          title: Center(
        child:Text("data"),
          ),
     
    ),
         body:SingleChildScrollView(
       
          child: Column(
            children: [
              Container(
                height: 2,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 10,
              ),
             Center(
              child: Container(
                height: 250,
                width: 200,
      
                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(AppImage.savatcha)),
                    ),
              
              ),
          ),
            ],
          ),

        
      ),
    );
  }
}