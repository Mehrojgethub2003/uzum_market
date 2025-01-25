import 'package:flutter/material.dart';
import 'package:online_shop/components/app_image.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class SorchPage extends StatefulWidget {
  const SorchPage({super.key});

  @override
  State<SorchPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SorchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          width: m_w(context) * 0.9,
          height: m_w(context) * 0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200),
          child: Row(
            children: [
              SizedBox(
                width: 7,
              ),
              const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Maxsulot va toiflarni qidirish",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              //  SizedBox(height: 100,)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _product("Telegram", 0),
            _product("Maxsulotlar", 1),
            _product("Identifikatsiya", 2),
            _product("Oziq ovqatlar", 3),
            _product("Xujalik maxsulotlar", 4),
            _product("Mayshiy texnikalar", 5),
            _product("Oqtepa", 6),
            _product("Uzum tezkor", 7),
            _product("diusbhfisbduis", 8),
            _product("diusbhfisbduis", 9),
            _product("diusbhfisbduis", 10),
            _product("diusbhfisbduis", 11),
            _product("diusbhfisbduis", 12),
            _product("diusbhfisbduis", 13),
            _product("diusbhfisbduis", 14),
            _product("diusbhfisbduis", 15),
            _product("diusbhfisbduis", 16),
            _product("diusbhfisbduis", 17),
            _product("diusbhfisbduis", 18),
            _product("diusbhfisbduis", 19),
            _product("diusbhfisbduis", 20),
            _product("diusbhfisbduis", 21),
            _product("diusbhfisbduis", 22),
            _product("diusbhfisbduis", 23),
          ],
        ),
      ),
    );
  }
}

Widget _product(String productName, int ImageInex) {
  List<String> images = [
    AppImage.telegram,
    AppImage.logo,
    AppImage.imgs1,
    AppImage.imgs2,
    AppImage.imgs3,
    AppImage.imgs4,
    AppImage.imgs5,
    AppImage.telegram,
    AppImage.logo,
    AppImage.telegram,
    AppImage.logo,
    AppImage.imgs1,
    AppImage.imgs2,
    AppImage.imgs3,
    AppImage.imgs4,
    AppImage.imgs5,
    AppImage.telegram,
    AppImage.logo,
    AppImage.telegram,
    AppImage.logo,
    AppImage.imgs1,
    AppImage.imgs2,
    AppImage.imgs3,
    AppImage.imgs4,
    AppImage.imgs5,
    AppImage.telegram,
  ];
  String productImage = images[ImageInex % images.length];
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          height: 45,
          child: Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(productImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Text(
                  productName,
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 19),
                ),
              ),
              Spacer(),
              Icon(Icons.chevron_right_rounded),
            ],
          ),
        ),
      ),
      Divider(
        height: 1,
        color: Colors.grey.shade400,
      ),
      SizedBox(height: 10),
    ],
  );
}
