import 'package:flutter/material.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class Cetiypage extends StatefulWidget {
  const Cetiypage({super.key});

  @override
  State<Cetiypage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Cetiypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sizning shaharingiz",
            style: TextStyle(color: Colors.black87),
          ),
        ),
      ),
      body: Column(
        children: [
          // Search Bar
          SizedBox(
            height: 1,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: m_w(context) * 0.92,
            height: m_w(context) * 0.11,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 7,
                  ),
                  const Center(
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 200,
                    padding: const EdgeInsets.only(bottom: 5),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Shaharni topish",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildRegionTile("Samarqand"),
                  _buildRegionTile("Navoiy"),
                  _buildRegionTile("Surxondaryo"),
                  _buildRegionTile("Toshkent"),
                  _buildRegionTile("Jizzax"),
                  _buildRegionTile("Sirdariyo"),
                  _buildRegionTile("Namangon"),
                  _buildRegionTile("Buxoro"),
                  _buildRegionTile("Xorazim"),
                  _buildRegionTile("Qoraqalpogiston"),
                  _buildRegionTile("Qashqadariyo"),
                  _buildRegionTile("Andijon"),
                  _buildRegionTile("Fargona"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegionTile(String regionName) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            height: 45,
            width: m_w(context) * 0.9,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    regionName,
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
        SizedBox(height: 15),
      ],
    );
  }
}
