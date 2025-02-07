import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_appp/core/app_style.dart';
import 'package:news_appp/core/strings_manager.dart';
import 'package:news_appp/models/categoryDM.dart';
import 'package:news_appp/presentation/screens/home/home_drawer/tabs/categories/widgets/category_widget.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List<CategoryDM> categoryList = CategoryDM.getAllCategories();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Text(
              StringsManager.categoryTitle,
              style: LightAppStyle.categoryTitle,
            ),
            Expanded(
              child: Padding(
                padding:  REdgeInsets.all(20),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 20,

                  ),
                  itemBuilder: (context, index) =>
                      CategoryWidget(categoryDM: categoryList[index], index: index),
                  itemCount: categoryList.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
