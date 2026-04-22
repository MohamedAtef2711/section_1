import 'dart:convert';
import 'package:http/http.dart' as http;
import '/models.dart';

 class NewsApi{
  Future<ArticlesList> getArticles() async {
    Uri url = Uri.https(
      'newsapi.org',
      '/v2/everything',
      {
        'q': 'tesla',
        'from': '2026-03-22',
        'sortBy': 'publishedAt',
        'apiKey': '380f7dfe50ee478b8a9c987e466182a6',
      },
    );
    var response = await http.get(url);
    var data = response.body;
    var json = jsonDecode(data);
    return ArticlesList.fromJson(json);
  }
}