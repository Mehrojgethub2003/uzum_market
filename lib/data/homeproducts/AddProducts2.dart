import 'package:flutter/material.dart';
import 'package:online_shop/data/homeproducts/products.dart';
import 'package:online_shop/data/models/news_detail/news_detail_page.dart';
import 'package:online_shop/data/models/news_model.dart';
import 'package:online_shop/data/models/product_models.dart';
import 'package:online_shop/home_products/category_product2.dart';

class TabBuilderWidgetTwo extends StatelessWidget {
  const TabBuilderWidgetTwo({super.key, required this.products});

  final List<Product2>? products;

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
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddProducts(
                    id: products?[index].id ??
                        -1), // Navigate to the CounterPage
              ),
            );
          },
          child: Column(
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
          ),
        );
      },
    );
  }
}

class TabBuilderWidgetSavat extends StatelessWidget {
  const TabBuilderWidgetSavat({super.key, required this.products});

  final List<Product2>? products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products?.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Savat(
                    id: products?[index].id ??
                        -1), // Navigate to the CounterPage
              ),
            );
          },
          child: Column(
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
          ),
        );
      },
    );
  }
}

class NewsBuilderWidgetSavat extends StatelessWidget {
  const NewsBuilderWidgetSavat({super.key, required this.newsModel});

  final NewsModel? newsModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: newsModel?.articles?.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewsDetailPage(article: newsModel?.articles?[index]),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(newsModel?.articles?[index].urlToImage ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
                // color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                newsModel?.articles != null
                    ? '${newsModel?.articles?[index].author?.toUpperCase()}'
                    : ' ',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                newsModel?.articles != null ? '${newsModel?.articles?[index].title}' : ' ',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                newsModel?.articles != null ? '${newsModel?.articles?[index].author}' : ' ',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
        );
      },
    );
  }
}
