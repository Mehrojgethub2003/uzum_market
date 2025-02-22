import 'package:flutter/material.dart';
import 'package:online_shop/components/app_image.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';
import 'package:online_shop/home/counterpage.dart/cetiypage.dart';
import 'package:online_shop/home/counterpage.dart/habarnoma.dart';
import 'package:online_shop/home/counterpage.dart/malumotnoma.dart';
import 'package:online_shop/home/counterpage.dart/tranthaction.dart';
import 'package:online_shop/home_products/category_products_top.dart/registratsiya.dart/registrishin.dart';

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
            const SizedBox(
              height: 5,
            ),
            Container(
              height: m_h(context) * 0.22,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: const Column(
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
                        const Tranthaction(), // Navigate to the CounterPage
                  ),
                );
              },
              child: const SizedBox(
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
                        const Cetiypage(), // Navigate to the CounterPage
                  ),
                );
              },
              child: const SizedBox(
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Icon(Icons.room_outlined),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
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
            const Divider(
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(
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
                        const Message(), // Navigate to the Message page
                  ),
                );
              },
              child: SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      const Icon(Icons.circle_notifications_outlined),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Xabarnomalar",
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      Expanded(
                          child: Container()), // This is equivalent to Spacer()
                      const Icon(Icons.arrow_forward_ios_rounded),
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
                          const SizedBox(
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
                          const SizedBox(
                            height: 17,
                          ),
                          Center(
                            child: Container(
                              child: const Text(
                                "Biz bilan boglaning",
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ),
                          const SizedBox(
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
                          const SizedBox(
                            height: 1,
                          ),
                          Container(
                              child: const Text("Telegram",
                                  style: TextStyle(fontSize: 15)))
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Icon(Icons.local_post_office_outlined),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
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
            const Divider(
              height: 1,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const Information(), // Navigate to the Information page
                  ),
                );
              },
              child: const SizedBox(
                height: 50, // Height set to 50 as per your requirement
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Icon(Icons.help_outline_sharp), // Help icon
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
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
                  const Text(
                    "Versiya:1.7.13",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(double.maxFinite, 48),
                        backgroundColor: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) =>
                              const Registrishin(),
                        );
                      },
                      child: const Text(
                        "Kirish",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
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
