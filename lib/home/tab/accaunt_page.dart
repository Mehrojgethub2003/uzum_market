import 'package:flutter/material.dart';
import 'package:online_shop/components/app_image.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class AccauntPage extends StatefulWidget {
  const AccauntPage({super.key});

  @override
  State<AccauntPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AccauntPage> {
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
                        radius: 40,
                        backgroundImage: AssetImage(AppImage.logo)),
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
            SizedBox(
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
                    Text(
                      "O'zbekcha",
                      style: TextStyle(fontSize: 17),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
              width: double.infinity,
              color: Colors.grey.shade300,
            ),
            SizedBox(
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
                    Text("Toshkent", style: TextStyle(fontSize: 18)),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),

                //Icon(Icons.arrow_forward_ios_rounded)
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
            SizedBox(
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
            SizedBox(
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
                      Icon(Icons.help_outline_sharp),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Ma'lumotnoma",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  )),
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
                    height: 90,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(
                          5), // Burchaklarni qirqish uchun radius
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kirish",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
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
