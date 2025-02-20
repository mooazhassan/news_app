import 'package:flutter/material.dart';
import 'package:news_appp/presentation/screens/home/tabs/article_details/article_details_widget.dart';

import '../data/models/a_response/articles.dart';
import '../presentation/screens/home/home.dart';
import '../presentation/screens/splash/splash.dart';

class RoutesManager {
  static const String home = '/home';
  static const String splash = '/splash';
  static const String articleDetails = '/articleDetails';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const Splash());
      case home:
        return MaterialPageRoute(builder: (context) => Home());
      case articleDetails:
        {
          var article = settings.arguments as Articles;
          return MaterialPageRoute(
              builder: (context) => ArticleDetails(
                    article: article,
                  ));
        }
    }
  }
}
