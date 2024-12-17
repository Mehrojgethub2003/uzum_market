import 'package:flutter/material.dart';
import 'package:online_shop/home/tab/main_page.dart';
import 'components/app_image.dart';

class SplishPage extends StatelessWidget {
  const SplishPage({super.key});

  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 3)).then((value) =>
    Navigator.pushAndRemoveUntil(context, 
    MaterialPageRoute(builder:(_)=>MainPage()), (Route) => false));
    return Scaffold(appBar: AppBar(title: Text('data'),),
      body: Center(
        child:Image.asset(AppImage.logo,width: 120,),
    ),
    );
  }
}
