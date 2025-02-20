import 'package:flutter/material.dart';



import '../../../../../../data/api/api_manager.dart';
import '../../../../../../data/models/a_response/articles.dart';
import '../../../../../../data/models/s_response/sources.dart';
import 'article_item_widget.dart';






class ArticleListWidget extends StatelessWidget {
  ArticleListWidget({super.key, required this.source});

  Sources source;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.getArticles(source.id ?? ''),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.data?.status == 'error' || snapshot.hasError) {
          return Text('errror');
        }
        List<Articles> articles = snapshot.data?.articles??[];
        return Expanded(
            child: ListView.builder(itemBuilder: (context, index) => ArticleItemWidget(article: articles[index]),itemCount:articles.length ,));
      },
    );
  }
}
