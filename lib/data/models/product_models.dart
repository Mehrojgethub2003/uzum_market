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
    this.id,
    this.title,
    this.image,
    this.price,
    this.description,
    this.brand,
    this.model,
    this.color,
    this.category,
    this.discount,
    this.popular,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: (json['price']??0).toDouble(),
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


class ShoppingProducts {
  final String? id;
  final String? productType;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? imageURL;
  final double? rating;
  final String? availability;
  final String? seller;
  final String? source;
  final String? addedByUser; // Faqat "userAdded" mahsulotlar uchun mavjud

  ShoppingProducts({
  this.id,
  this.productType,
  this.title,
  this.price,
  this.description,
  this.category,
  this.imageURL,
  this.rating,
  this.availability,
  this.seller,
  this.source,
  this.addedByUser, // Faqat ba'zi mahsulotlar uchun optional
  });

  // **📌 JSON-dan Dart obyektiga o‘girish**
  factory ShoppingProducts.fromJson(Map<String, dynamic> json) {
    return ShoppingProducts(
      id: json["id"],
      productType: json["productType"],
      title: json["title"],
      price: (json["price"] as num).toDouble(),
      description: json["description"],
      category: json["category"],
      imageURL: json["imageURL"],
      rating: (json["rating"] as num).toDouble(),
      availability: json["availability"],
      seller: json["seller"],
      source: json["source"],
      addedByUser: json["addedByUser"], // Agar mavjud bo'lsa, oladi
    );
  }

  
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "productType": productType,
      "title": title,
      "price": price,
      "description": description,
      "category": category,
      "imageURL": imageURL,
      "rating": rating,
      "availability": availability,
      "seller": seller,
      "source": source,
      if (addedByUser != null) "addedByUser": addedByUser, // Faqat mavjud bo'lsa
    };
  }

 
}
