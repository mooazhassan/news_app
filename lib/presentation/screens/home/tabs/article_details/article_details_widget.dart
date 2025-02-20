import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/app_style.dart';
import '../../../../../core/assets_manager.dart';
import '../../../../../core/colors_manager.dart';
import '../../../../../data/models/a_response/articles.dart';

class ArticleDetails extends StatelessWidget {
  const ArticleDetails({super.key, required this.article});

  final Articles article;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(AssetsManager.patternBg),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: REdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: CachedNetworkImage(
                      imageUrl: article.urlToImage ?? '',
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          Center(child: Icon(Icons.error)),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    article.source?.name ?? '',
                    style: LightAppStyle.articleSource,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    article.title ?? '',
                    style: LightAppStyle.articleTitle,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    textAlign: TextAlign.end,
                    article.publishedAt ?? '',
                    style: LightAppStyle.articleTimePuplished,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Padding(
                    padding: REdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorsManager.whitee,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Padding(
                        padding: REdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              article.content ?? '',
                              style: LightAppStyle.articleContent,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            InkWell(
                              onTap:(){
                                _launchURL();
                              },
                              child: Text(
                                'View Full Article',
                                style: LightAppStyle.viewFullArticle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  _launchURL() async {
    final Uri url = Uri.parse(article.url??'');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
