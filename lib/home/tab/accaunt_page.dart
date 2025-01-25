import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:online_shop/components/app_image.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';
import 'package:online_shop/home/counterpage.dart/cetiypage.dart';
import 'package:online_shop/home/counterpage.dart/habarnoma.dart';
import 'package:online_shop/home/counterpage.dart/malumotnoma.dart';
import 'package:online_shop/home/counterpage.dart/tranthaction.dart';

class AccauntPage extends StatefulWidget {
  const AccauntPage({super.key});

  @override
  State<AccauntPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AccauntPage> {
  TextEditingController _controller =
      TextEditingController(); // Default +998 qiymatini o'rnatish
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: m_h(context) * 0.26,
          width: double.infinity,
          child: const Center(
            child: Text(
              "Profil",
              style: TextStyle(
                color: Colors.black, // Matn rangi
                fontSize: 18.0, // Matn hajmi
                fontWeight: FontWeight.bold, // Matnning qalinligi
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: m_h(context) * 0.22,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                        radius: 40, backgroundImage: AssetImage(AppImage.logo)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tizimga kiring va Uzum veb-saytidagi oqil\n xaridlarga kiring",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            // GestureDetector => Inkwell
            InkWell(
              onTap: () {
                // Navigate to the counter page when tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Tranthaction(), // Navigate to the CounterPage
                  ),
                );
              },
              child: SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(AppImage.imgs5)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Ilova tili",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "O'zbekcha",
                            style: TextStyle(fontSize: 17),
                          ),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              width: double.infinity,
              color: Colors.grey.shade300,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Cetiypage(), // Navigate to the CounterPage
                  ),
                );
              },
              child: SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Icon(Icons.room_outlined),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Shahar",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text("Toshkent", style: TextStyle(fontSize: 18)),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ],
                  ),

                  //Icon(Icons.arrow_forward_ios_rounded)
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Icon(Icons.map_outlined),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Xaritadagi topshirish punkitlari",
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),

                //Icon(Icons.arrow_forward_ios_rounded)
              ),
            ),
            Container(
              height: 20,
              color: Colors.grey.shade300,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Message(), // Navigate to the Message page
                  ),
                );
              },
              child: SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Icon(Icons.circle_notifications_outlined),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Xabarnomalar",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      Expanded(
                          child: Container()), // This is equivalent to Spacer()
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              color: Colors.grey.shade300,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  //  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            height: 6,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.shade500,
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Center(
                            child: Container(
                              child: Text(
                                "Biz bilan boglaning",
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Center(
                            child: Container(
                              height: 100,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage(AppImage.telegram)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Container(
                              child: Text("Telegram",
                                  style: TextStyle(fontSize: 15)))
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Icon(Icons.local_post_office_outlined),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Biz bilan bog'lanish",
                            style: TextStyle(fontSize: 19),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    )),
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Information(), // Navigate to the Information page
                  ),
                );
              },
              child: SizedBox(
                height: 50, // Height set to 50 as per your requirement
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Icon(Icons.help_outline_sharp), // Help icon
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Ma'lumotnoma", // Text label
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      Spacer(), // Used Spacer to push the arrow icon to the right
                      Icon(Icons.arrow_forward_ios_rounded), // Right arrow icon
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: m_h(context) * 0.20,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Versiya:1.7.13",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        disabledForegroundColor:
                            Colors.transparent.withOpacity(0.38),
                        disabledBackgroundColor: Colors.transparent.withOpacity(
                            0.12), // Button ustidagi rangni shaffof qilish
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              5), // Buttonning yumaloq qirralari
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 870,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(
                                      height:
                                          15), // Boshidan ozgina bo'sh joy qoldirish

                                  // "Kirish" matnini markazlashtirish
                                  Center(
                                    child: Text(
                                      "Kirish",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),

                                  SizedBox(height: 30),

                                  // "Telifon raqamingizni kiriting" matnini yuqoridan joylashtirish
                                  Align(
                                    alignment: Alignment
                                        .topLeft, // Matnni chapga joylashtirish
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15), // Matnni chapga siljitish
                                      child: Text(
                                        "Telifon raqamingizni kiriting",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        "Tastiqlash kodi ko'rsating SMS yuboramiz",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),

                                  Container(
                                    //height: 40,
                                    width: m_w(context) * 0.9,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.grey.shade300,
                                    ),
                                    child: TextField(
                                      inputFormatters: [
                                        MaskTextInputFormatter(
                                          mask: "(##) ### ## ##",
                                        ),
                                      ],
                                      style: TextStyle(fontSize: 17),
                                      controller:
                                          _controller, // Default qiymatni ko'rsatish uchun controllerdan foydalanish
                                      keyboardType: TextInputType
                                          .number, // Raqamlarni kiritish uchun keyboard turi
                                      decoration: InputDecoration(
                                          prefixIcon: SizedBox(
                                              width: 20,
                                              child: Center(
                                                  child: Text(
                                                "+998",
                                                style: TextStyle(fontSize: 17),
                                              ))), // Raqamni +998 bilan boshlash
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.only(top: 12)
                                          // Matnni maydonda joylashtirish
                                          ),
                                    ),
                                  ),

                                  SizedBox(height: 20),

                                  Container(
                                    height: 45,
                                    width: m_w(context) * 0.9,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.blue.shade700,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Kodni olish",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 20),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Kirish",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
