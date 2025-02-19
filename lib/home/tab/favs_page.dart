import 'package:flutter/material.dart';
import 'package:online_shop/components/app_image.dart';

class FavsPage extends StatefulWidget {
  const FavsPage({super.key});

  @override
  State<FavsPage> createState() => _FavsPageState();
}

class _FavsPageState extends State<FavsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Istaklar"),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(AppImage.savatcha))),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Bu yerda sevimli tavaringizni saqlab quyamiz",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  children: [
                    TextSpan(
                        text: "Akkauntga kiring va sizga yoqqan tavarlarda "),
                    WidgetSpan(
                      child: Icon(Icons.favorite,
                          color: Colors.red, size: 18), // Yurakcha ikoni
                    ),
                    TextSpan(
                        text:
                            " belgisini bosing. Hech narsa va biror qayta qidirishga hojat qolmaydi"),
                
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 35,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              )
          ],
        ),
      ),
    );
  }
  
}
