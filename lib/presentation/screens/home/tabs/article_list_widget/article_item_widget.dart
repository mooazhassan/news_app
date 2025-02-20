import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_appp/core/app_style.dart';
import 'package:news_appp/core/routes_manager.dart';

import '../../../../../../data/models/a_response/articles.dart';

class ArticleItemWidget extends StatelessWidget {
  ArticleItemWidget({super.key, required this.article});

  Articles article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.articleDetails,
          arguments: article,
        );
      },
      child: Padding(
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
          ],
        ),
      ),
    );
  }
}
