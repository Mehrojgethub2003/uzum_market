// import 'package:flutter/material.dart';
// import 'package:online_shop/data/homeproducts/products.dart';
// import 'package:online_shop/data/models/product_models.dart';
// import 'package:online_shop/home_products/category_product2.dart';

// class TopShoping extends StatelessWidget {
//   const TopShoping({super.key, required this.products2});

//   final List<Product2>? products2;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       // itemCount: products?.length,

//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisExtent: 300,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
//       itemBuilder: (context, index) {
//         return InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => AddProducts(
//                     id: products2?[index].id ??
//                         -1), // Navigate to the CounterPage
//               ),
//             );
//           },
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 150,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: DecorationImage(
//                     image: NetworkImage(products2?[index].image ?? ''),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 // color: Colors.red,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 products2 != null
//                     ? '${products2?[index].category?.toUpperCase()}'
//                     : ' ',
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(fontSize: 14, color: Colors.black),
//               ),
//               Text(
//                 products2 != null ? '${products2?[index].title}' : ' ',
//                 maxLines: 3,
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(fontSize: 14, color: Colors.black),
//               ),
//               Text(
//                 products2 != null ? '\$${products2?[index].price}' : ' ',
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(fontSize: 18, color: Colors.black),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class TabBuilderWidgetSavat extends StatelessWidget {
//   const TabBuilderWidgetSavat({super.key, required this.products2});

//   final List<Product2>? products2;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: products2?.length,
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisExtent: 300,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
//       itemBuilder: (context, index) {
//         return InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => Savat(
//                     id: products2?[index].id ??
//                         -1), // Navigate to the CounterPage
//               ),
//             );
//           },
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 150,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: DecorationImage(
//                     image: NetworkImage(products2?[index].image ?? ''),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 // color: Colors.red,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 products2 != null
//                     ? '${products2?[index].category?.toUpperCase()}'
//                     : ' ',
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(fontSize: 14, color: Colors.black),
//               ),
//               Text(
//                 products2 != null ? '${products2?[index].title}' : ' ',
//                 maxLines: 3,
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(fontSize: 14, color: Colors.black),
//               ),
//               Text(
//                 products2 != null ? '\$${products2?[index].price}' : ' ',
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(fontSize: 18, color: Colors.black),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
