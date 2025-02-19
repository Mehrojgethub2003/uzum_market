import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';
import 'package:online_shop/data/app_servesis/product_serves.dart';
import 'package:online_shop/data/models/product_models.dart';
import 'package:online_shop/home_products/category_products.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({super.key, required this.id});
  final int id;
  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts>
    with TickerProviderStateMixin {
  late final TabController tabController;

  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  bool isLiked = false; // Tugma holatini saqlash uchun o'zgaruvchi

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getProductsByCategorySingele(widget.id),
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Add Products"),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: isLiked
                      ? Colors.red
                      : Colors.grey.shade200, // Rangni boshqarish
                ),
                iconSize: 35.0, // Belgi o'lchamini kattalashtirish
                onPressed: () {
                  setState(
                      () => isLiked = !isLiked // Tugma holatini o'zgartirish
                      );
                },
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          body: snapshot.hasError
              ? const Text("Error ketdi")
              : !snapshot.hasData
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 400,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(snapshot.data?.image ?? ''),
                              ),
                            ),
                          ),
                          Text(
                            snapshot.data?.category ?? '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            snapshot.data?.title ?? '',

                            // maxLines: 5,
                            // overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            '\$${snapshot.data?.price}' '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment
                                .centerLeft, // Qator boshidan joylashuv
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                "1000 dona xarid qilish mumkun",
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment
                                .centerLeft, // Qator boshidan joylashuv
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                "O'xshash mahsulotlar",
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FutureBuilder(
                              future: getProductsByCategory(),
                              builder: (context, snapshot) {
                                if (snapshot.hasError) {
                                  return const Text('Error ketdi');
                                } else if (!snapshot.hasData) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                }
                                return SizedBox(
                                  height: m_h(context) * 1 - 220,
                                  width: double.infinity,
                                  child: TabBarView(
                                    controller: tabController,
                                    children: [
                                      TabBuilderWidget(
                                        products: snapshot.data?.products ?? [],
                                      ),
                                      // TapbuBuilderWeget1(
                                      //   products: snapshot.data?.products ?? [],
                                    ],
                                  ),
                                );
                              }),
                        ],
                      ),
                    ),
          bottomNavigationBar: !snapshot.hasData
              ? const SizedBox()
              : ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        const Size(double.infinity, 80), // Balandligi: 60
                    backgroundColor: Colors.white, // Tugma rangi
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Turt burchak shakli
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\$${snapshot.data?.price}'
                        '',
                        // textAlign: TextAlign.left,
                        style:
                            const TextStyle(fontSize: 32, color: Colors.black),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 160,
                          height: 43,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(
                                12), // Burchaklarni qirqish radiusi
                          ),
                          child: Center(
                            child: Text(
                              "Savat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      20), // Matn rangi oq qilib o'zgartirildi
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
        );
      },
    );
  }
}
