import 'package:flutter/material.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';
import 'package:online_shop/home/counterpage.dart/malumotnoma.dart';
import 'package:online_shop/home/tab/accaunt_page.dart';
import 'package:online_shop/home/tab/favs_page.dart';
import 'package:online_shop/home/tab/home_page.dart';
import 'package:online_shop/home/tab/shopping_page.dart';
import 'package:online_shop/home/tab/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomePage(),
     const SorchPage(),
      const ShoppingPage(),
      const FavsPage(),
      const AccauntPage(),
    ];
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              icon: Icon(Icons.home),
              label: "Bosh sahifa"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              icon: Icon(Icons.search),
              label: "Qidiruv"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.shopping_basket,
                color: Colors.blue,
              ),
              icon: Icon(Icons.shopping_basket),
              label: "savat"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite_outline,
                color: Colors.blue,
              ),
              icon: Icon(Icons.favorite_outline),
              label: "Istaklar"),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            icon: Icon(Icons.person),
            label: "Kabinet",
          ),
        ],
      ),
    );
  }
}
