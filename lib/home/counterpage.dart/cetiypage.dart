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
        title: Text("data"),
      ),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Column(
          children: [
            // Search Bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              width: m_w(context) * 0.89,
              height: m_w(context) * 0.11,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade300),
              child: Center(
                child: Row(
                  children: [
                    const Center(
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
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

            // Regions List
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
    );
  }

  // Helper method to build each region tile
  Widget _buildRegionTile(String regionName) {
    return Column(
      children: [
        Container(
          height: 45,
          width: m_w(context) * 0.9,
          child: Text(
            regionName,
            style: TextStyle(color: Colors.grey.shade800, fontSize: 19),
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
