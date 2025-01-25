

class Products {
  final String? status;
  final String? message;
  final List<Product>? products;

  Products({
    required this.status,
    required this.message,
    required this.products,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      status: json['status'],
      message: json['message'],
      products: List<Product>.from(
        json['products'].map((product) => Product.fromJson(product)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'products': products?.map((product) => product.toJson()).toList(),
    };
  }
}
class Product {
  final int? id;
  final String? title;
  final String? image;
  final double? price;
  final String? description;
  final String? brand;
  final String? model;
  final String? color;
  final String? category;
  final int? discount;
  final bool? popular;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.brand,
    required this.model,
    required this.color,
    required this.category,
    this.discount,
    this.popular,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: json['price'].toDouble(),
      description: json['description'],
      brand: json['brand'],
      model: json['model'],
      color: json['color'],
      category: json['category'],
      discount: json['discount'],
      popular: json['popular'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'price': price,
      'description': description,
      'brand': brand,
      'model': model,
      'color': color,
      'category': category,
      'discount': discount,
      'popular': popular,
    };
  }
}

// class ProductResponsePhone {
//   final String? status;
//   final String? message;
//   final List<Product>? products;

//   ProductResponsePhone({
//     this.status,
//     this.message,
//     this.products,
//   });

//   factory ProductResponsePhone.fromJson(Map<String, dynamic> json) {
//     return ProductResponsePhone(
//       status: json['status'] as String?,
//       message: json['message'] as String?,
//       products: (json['products'] as List?)
//           ?.map((product) => Product.fromJson(product as Map<String, dynamic>))
//           .toList(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'status': status,
//       'message': message,
//       'products': products?.map((product) => product.toJson()).toList(),
//     };
//   }
// }
// class ProductPhone {
//   final int? id;
//   final String? title;
//   final String? image;
//   final double? price;
//   final String? description;
//   final String? brand;
//   final String? model;
//   final String? color;
//   final String? category;
//   final int? discount;
//   final bool? onSale;

//   ProductPhone({
//     this.id,
//     this.title,
//     this.image,
//     this.price,
//     this.description,
//     this.brand,
//     this.model,
//     this.color,
//     this.category,
//     this.discount,
//     this.onSale,
//   });

//   factory ProductPhone.fromJson(Map<String, dynamic> json) {
//     return ProductPhone(
//       id: json['id'] as int?,
//       title: json['title'] as String?,
//       image: json['image'] as String?,
//       price: (json['price'] as num?)?.toDouble(),
//       description: json['description'] as String?,
//       brand: json['brand'] as String?,
//       model: json['model'] as String?,
//       color: json['color'] as String?,
//       category: json['category'] as String?,
//       discount: json['discount'] as int?,
//       onSale: json['onSale'] as bool?,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'title': title,
//       'image': image,
//       'price': price,
//       'description': description,
//       'brand': brand,
//       'model': model,
//       'color': color,
//       'category': category,
//       'discount': discount,
//       'onSale': onSale,
//     };
//   }
// }

class ProductResponse {
  final List<Product>? products;

  ProductResponse({
    this.products,
  });

  factory ProductResponse.fromJson(List<dynamic> jsonList) {
    return ProductResponse(
      products: jsonList
          .map((product) => Product.fromJson(product as Map<String, dynamic>))
          .toList(),
    );
  }

  List<Map<String, dynamic>> toJson() {
    return products?.map((product) => product.toJson()).toList() ?? [];
  }
}
class Product2 {
  final int? id;
  final String? title;
  final String? price;
  final String? category;
  final String? description;
  final String? image;

  Product2({
    this.id,
    this.title,
    this.price,
    this.category,
    this.description,
    this.image,
  });

  factory Product2.fromJson(Map<String, dynamic> json) {
    return Product2(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: json['price'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'category': category,
      'description': description,
      'image': image,
    };
  }
}
