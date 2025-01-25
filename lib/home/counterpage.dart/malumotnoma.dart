// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Ma'lumotnomalar", // Siz xohlagan matn
            style: TextStyle(
              color: Colors.black, // Matn rangi
              fontSize: 18.0, // Matn hajmi
              fontWeight: FontWeight.bold, // Matnning qalinligi
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            _buildRegionTile("Royxatdan o'tish"),
            _buildRegionTile("Buyurtmani rasmiylashtirish"),
            _buildRegionTile("Yetkazib berish"),
            _buildRegionTile("To'lov"),
            _buildRegionTile("Uzum Nasiya mudatli to'lov"),
            _buildRegionTile("Buyurtmani qabul qilish"),
            _buildRegionTile("Mahsulotlar"),
            _buildRegionTile("Sifatga e'tiroz bo'lmagan mahsulotni qaytarish"),
            _buildRegionTile("Sifatga e'tiroz bo'lgan mahsulotni qaytarish"),
            _buildRegionTile("To'lovni qaytarish"),
            _buildRegionTile("Sharhlar"),
            _buildRegionTile("Internet fribgarlar"),
            _buildRegionTile("Savollaringiz bormi?"),
          ],
        ),
      ),
    );
  }

  Widget _buildRegionTile(String regionName) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: SizedBox(
            height: 30,
            width:
                MediaQuery.of(context).size.width * 1, // Ekran kengligini olish
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    regionName,
                    style:
                        TextStyle(color: Colors.grey.shade800, fontSize: 16.8),
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
