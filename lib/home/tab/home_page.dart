import 'package:flutter/material.dart';
import 'package:online_shop/components/app_image.dart';
import 'package:online_shop/components/medeaqurest/medea_qurest.dart';
import 'package:online_shop/data/app_servesis/product_serves.dart';
import 'package:online_shop/data/models/product_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

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
          child: Center(
            child: Row(
              children: [
                const SizedBox(
                  width: 7,
                ),
                const Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: 300,
                  padding: const EdgeInsets.only(bottom: 5),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Maxsulot va toiflarni qidirish",
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
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
           FutureBuilder(
            future: getProductsByCategoryShop(), 
            builder: (context,snapshot){
              if(snapshot.hasError){
                return const Text("Nimadir xato ketdi");
              }
              else if(!snapshot.hasData){
                return  const SizedBox(
                      height: 270,
                      child: Center(child: CircularProgressIndicator()));
              }
              return SizedBox(
              height: m_h(context) * 0.26,
              child: PageView(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(AppImage.imgs1), fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: m_h(context) * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(AppImage.imgs4)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: m_h(context) * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(AppImage.imgs3)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: m_h(context) * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(AppImage.imgs4)),
                    ),
                  ),
                
                ],
              ),
            );
            
            }
            ),
            
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 110,
              width: double.infinity,
              child: ListView.separated(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 12);
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.red,
                        // backgroundImage: NetworkImage("https://picsum.photos/id/{index}/{width}/{height}"),
                        backgroundImage: AssetImage([
                          AppImage.imgs1,
                          AppImage.imgs2,
                          AppImage.imgs3,
                          AppImage.imgs4,
                          AppImage.imgs2,
                          AppImage.imgs2,
                          AppImage.imgs3
                        ][index]),
                      ),
                      const SizedBox(height: 2),
                      Text([
                        "Katta savat",
                        "Bodiy",
                        "Bayram uchun",
                        "Uzum avto",
                        "Kobinint",
                        "Kridet",
                        "Nimadir"
                      ][index])
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 10, // Chiziqning qalinligi
              width: double.infinity, // Chiziqning uzunligi
              color: Colors.grey.shade400, // Chiziqning rangi
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              // height: 100,

              child: const Text(
                "Yangi yil savdo",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            FutureBuilder(
              future: getProductsByCategoryShop(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('Error ketdi');
                } else if (!snapshot.hasData) {
                  return const SizedBox(
                      height: 270,
                      child: Center(child: CircularProgressIndicator()));
                }
                return SizedBox(
                  height: 270,
                  width: double.infinity,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: snapshot.data?.products?.length ?? 0,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 8);
                    },
                    itemBuilder: (context, index) {
                      return Expanded(
                        // flex: 9,
                        child: SizedBox(
                          height: 150,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                //  width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: NetworkImage(snapshot
                                              .data?.products?[index].image ??
                                          ''),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                snapshot.data?.products != null
                                    ? '${snapshot.data?.products?[index].category?.toUpperCase()}'
                                    : ' ',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                snapshot.data?.products != null
                                    ? '${snapshot.data?.products?[index].title}'
                                    : ' ',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                snapshot.data?.products != null
                                    ? '\$${snapshot.data?.products?[index].price}'
                                    : ' ',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      );
                      // Expanded(
                      //   flex: 7,
                      //   child:  Text("Salom",),);
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: TabBar(
                controller: tabController,
                tabs: const [
                  Tab(
                    text: 'Yangi yil savdosi',
                  ),
                  Tab(
                    text: 'Mashhur',
                  ),
                ],
              ),
            ),
            FutureBuilder(
                future: getProductsByCategory(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Error ketdi');
                  } else if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
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
                        // ),
                        TabBuilderWidget(
                          products: snapshot.data?.products ?? [],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    
    );

    //  bady:Column(

    //  ),
  }
}

class TabBuilderWidget extends StatelessWidget {
  const TabBuilderWidget({super.key, required this.products});

  final List<Product>? products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // itemCount: products?.length,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(products?[index].image ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
              // color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              products != null
                  ? '${products?[index].category?.toUpperCase()}'
                  : ' ',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            Text(
              products != null ? '${products?[index].title}' : ' ',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            Text(
              products != null ? '\$${products?[index].price}' : ' ',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        );
      },
    );
  }
}

// class TapbuBuilderWegetTu extends StatelessWidget {
//   const TapbuBuilderWegetTu({super.key, required this.products});
//   final List<Product>? products;
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       //  itemCount: 10,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisExtent: 200,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
//       itemBuilder: (context, index) {
//         return Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             image: DecorationImage(
//               image: NetworkImage(products?[index].image ?? ''),
//               fit: BoxFit.cover,
//             ),
//           ), // color: Colors.red,
//         );
//       },
//     );
//   }
// }
