class ArticlesList {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  ArticlesList({this.status, this.totalResults, this.articles});

  ArticlesList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles!.add(new Articles.fromJson(v));
      });
    }
  }
}
class Articles {
  String? author;
  String? title;
  String? description;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles({
    this.author,
    this.title,
    this.description,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  Articles.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
}