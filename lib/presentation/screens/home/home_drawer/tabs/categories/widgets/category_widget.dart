import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_appp/core/app_style.dart';
import 'package:news_appp/models/categoryDM.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key, required this.categoryDM, required this.index});

  CategoryDM categoryDM;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: categoryDM.bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
            bottomLeft: Radius.circular(index.isEven ? 0 : 25),
            bottomRight: Radius.circular(index.isEven ? 25 : 0),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            categoryDM.imagePath,
            height: 116.h,
            width: 132.w,
          ),
          Text(
            categoryDM.title,
            style: LightAppStyle.categoryItemTitle,
          )
        ],
      ),
    );
  }
}
