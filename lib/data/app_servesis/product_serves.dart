import 'package:http/http.dart' as http;
import 'package:online_shop/data/models/product_models.dart';

import 'dart:convert';

Future<Products?> getProductsByCategory() async {
  try {
    Uri uri = Uri.parse('https://fakestoreapi.in/api/products');
    http.Response response = await http.get(uri);

    print('Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Products.fromJson(data);
    } else {
      print('Error: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error: $e');
    throw Exception('Error: $e');
  }
}

// Future<ProductResponsePhone?> getProductsByCategoryPhone() async {
//   try {
//     Uri uri =
//         Uri.parse('https://fakestoreapi.in/api/products/category?type=mobile');

//        //Uri.parse('https://fakestoreapi.com/products');
//     http.Response response = await http.get(uri);

//     print('Status Code: ${response.statusCode}');
//     print('Response Body: ${response.body}');

//     if (response.statusCode == 200) {
//       final decodedData = json.decode(response.body);
//       return ProductResponsePhone.fromJson(decodedData);        
//     } else {
//       print('Error: ${response.statusCode}');
//       return null;
//     }
//   } catch (e) {
//     print('Error: $e');
//     throw Exception('Error: $e');
//   }
// }


Future<ProductResponse?> getProductsByCategoryShop() async {
  try {
    Uri uri =
        //Uri.parse('https://fakestoreapi.in/api/products/category?type=mobile');

       Uri.parse('https://fakestoreapi.com/products');
    http.Response response = await http.get(uri);

    print('Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      return ProductResponse.fromJson(decodedData);        
    } else {
      print('Error: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error: $e');
    throw Exception('Error: $e');
  }
}
