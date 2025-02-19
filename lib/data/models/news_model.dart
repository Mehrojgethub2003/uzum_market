
class NewsModel {
  final String? status;
  final int? totalResults;
  final List<ArticleNews>? articles;

  NewsModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  // JSON string emas, Map qabul qilish uchun fromJson metodi yangilandi
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: json['articles'] != null
          ? List<ArticleNews>.from(
              json['articles'].map((x) => ArticleNews.fromJson(x)))
          : null,
    );
  }
}

class ArticleNews {
  final SourceNews? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  ArticleNews({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory ArticleNews.fromJson(Map<String, dynamic> json) {
    return ArticleNews(
      source: json['source'] != null ? SourceNews.fromJson(json['source']) : null,
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}

class SourceNews {
  final String? id;
  final String? name;

  SourceNews({
    this.id,
    this.name,
  });

  factory SourceNews.fromJson(Map<String, dynamic> json) {
    return SourceNews(
      id: json['id'],
      name: json['name'],
    );
  }
}
