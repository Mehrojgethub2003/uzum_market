import 'package:http/http.dart' as http;
import 'package:online_shop/data/models/news_model.dart';
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

Future<NewsModel?> getNews() async {
  try {
    Uri uri = Uri.parse("https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=f26a4ef6f6994ff8a1b50a7d9c9fde8f");

    http.Response response = await http.get(uri);

    print('Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return NewsModel.fromJson(data);
    } else {
      print('Error: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error: $e');
    throw Exception('Error: $e');
  }
}





Future<Product?> getProductsByCategorySingele(int id) async {
  try {
    Uri uri = Uri.parse('https://fakestoreapi.in/api/products/$id');
    print('uriii : $uri'); 
    http.Response response = await http.get(uri);

    print('Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Product.fromJson(data['product']);
    } else {
      print('Error: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error: $e');
    throw Exception('Error: $e');
  }
}

Future<Product?> getProductsByCategorySingeleShop(int id) async {
  try {
    Uri uri = Uri.parse('https://fakestoreapi.in/api/products/$id');
    print('uriii : $uri'); 
    http.Response response = await http.get(uri);

    print('Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Product.fromJson(data['product']);
    } else {
      print('Error: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error: $e');
    throw Exception('Error: $e');
  }
}

Future<Product?> getProductsByCategorySingleMayka(int id) async {
  try {
    Uri uri = Uri.parse('https://fakestoreapi.com/products/$id');
    print('uriii : $uri'); 
    http.Response response = await http.get(uri);

    print('Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Product.fromJson(data);
    } else {
      print('Error: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error: $e');
    throw Exception('Error: $e');
  }
}

