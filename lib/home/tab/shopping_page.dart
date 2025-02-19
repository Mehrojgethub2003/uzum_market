import 'package:flutter/material.dart';
import 'package:online_shop/components/app_image.dart';
import 'package:online_shop/data/app_servesis/product_serves.dart';
import 'package:online_shop/data/models/news_detail/news_detail_page.dart';
import 'package:online_shop/data/models/news_model.dart';
import 'package:online_shop/data/models/product_models.dart';
import 'package:online_shop/home_products/category_product2.dart';
import 'package:online_shop/home_products/category_products_top.dart/registratsiya.dart/registrishin.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _FavsPageState();
}

class _FavsPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait([getNews(), getProductsByCategory()]),
        builder: (context, AsyncSnapshot<List<Object?>> snapData) {
          NewsModel? newsModel = snapData.data?[0] as NewsModel?;
          Products? products = snapData.data?[1] as Products?;

          return Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text("Savat"),
              ),
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage(AppImage.savatcha))),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        "Savatingiz hozircha bo'sh",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        "Bosh sahifadan boshlang -- kerakli tavarni qidiruv orqali topishingiz yoki to'plamlarni ko'rishingiz mumkin",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90),
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
                          "Akkauntga kiring",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 8,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    snapData.hasError
                        ? const Center(child: Text('Error ketdi'))
                        : !snapData.hasData
                            ? const Center(child: CircularProgressIndicator())
                            : Column(children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Ommabop mahsulotlar",
                                      style: TextStyle(fontSize: 23),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 270,
                                  width: double.infinity,
                                  child: ListView.separated(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    itemCount: newsModel?.articles?.length ?? 0,
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(width: 8);
                                    },
                                    itemBuilder: (context, index) {
                                      return Expanded(
                                        // flex: 9,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NewsDetailPage(
                                                        article: newsModel
                                                            ?.articles?[index]),
                                              ),
                                            );
                                          },
                                          child: SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 150,
                                                  //  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            newsModel
                                                                    ?.articles?[
                                                                        index]
                                                                    .urlToImage ??
                                                                ''),
                                                        fit: BoxFit.contain),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  newsModel?.articles != null
                                                      ? '${newsModel?.articles?[index].author?.toUpperCase()}'
                                                      : ' ',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  newsModel?.articles != null
                                                      ? '${newsModel?.articles?[index].title}'
                                                      : ' ',
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  newsModel?.articles != null
                                                      ? '${newsModel?.articles?[index].author}'
                                                      : ' ',
                                                  textAlign: TextAlign.center,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 8,
                                  color: Colors.grey.shade300,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Ko'rganingiz",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                snapData.hasError
                                    ? const Center(child: Text('Error ketdi'))
                                    : !snapData.hasData
                                        ? const Center(
                                            child: CircularProgressIndicator())
                                        : Column(children: [
                                            SizedBox(
                                              height: 270,
                                              width: double.infinity,
                                              child: ListView.separated(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16),
                                                itemCount: products
                                                        ?.products?.length ??
                                                    0,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return const SizedBox(
                                                      width: 8);
                                                },
                                                itemBuilder: (context, index) {
                                                  return Expanded(
                                                    // flex: 9,
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) => Savat(
                                                                id: products
                                                                        ?.products?[
                                                                            index]
                                                                        .id ??
                                                                    -1),
                                                          ),
                                                        );
                                                      },
                                                      child: SizedBox(
                                                        height: 150,
                                                        width: 150,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 150,
                                                              //  width: double.infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12),
                                                                image: DecorationImage(
                                                                    image: NetworkImage(
                                                                        products?.products?[index].image ??
                                                                            ''),
                                                                    fit: BoxFit
                                                                        .contain),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Text(
                                                              products?.products !=
                                                                      null
                                                                  ? '${products?.products?[index].category?.toUpperCase()}'
                                                                  : ' ',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: const TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                            Text(
                                                              products?.products !=
                                                                      null
                                                                  ? '${products?.products?[index].title}'
                                                                  : ' ',
                                                              maxLines: 3,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: const TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                            Text(
                                                              products?.products !=
                                                                      null
                                                                  ? '\$${products?.products?[index].price}'
                                                                  : ' ',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: const TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ])
                              ]),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
