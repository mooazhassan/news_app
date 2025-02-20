import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_appp/data/models/a_response/article_response.dart';

import '../models/s_response/source_response.dart';

class ApiManager {
  //https://newsapi.org/v2/top-headlines/sources?apiKey=c3740cddb3d7400cabda097bf98ed104
  //https://newsapi.org/v2/everything?apiKey=c3740cddb3d7400cabda097bf98ed104&sources=abc-news-au
  static const String baseUrl = 'newsapi.org';
  static const String sourceEndPoint = '/v2/top-headlines/sources';
  static const String articleEndPoint = '/v2/everything';
  static const String apiKey = 'c3740cddb3d7400cabda097bf98ed104';

  static Future<SourceResponse> getSources(String categoryID) async {
    Uri url = Uri.https(baseUrl, sourceEndPoint, {
      'apiKey': apiKey,
      'category': categoryID,
    });
    http.Response serverResponse = await http.get(url);
    Map<String, dynamic> json = jsonDecode(serverResponse.body);
    return SourceResponse.fromJson(json);
  }
  static Future<ArticleResponse> getArticles(String sourceID) async {
    Uri url = Uri.https(baseUrl, articleEndPoint, {
      'apiKey': apiKey,
      'sources': sourceID,
    });
    http.Response serverResponse = await http.get(url);
    Map<String, dynamic> json = jsonDecode(serverResponse.body);
    return ArticleResponse.fromJson(json);
  }

}
