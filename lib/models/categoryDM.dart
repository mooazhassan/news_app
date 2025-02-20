import 'dart:ui';

import 'package:news_appp/core/assets_manager.dart';
import 'package:news_appp/core/colors_manager.dart';
import 'package:news_appp/core/constant_manager.dart';
import 'package:news_appp/core/strings_manager.dart';

class CategoryDM {
  String id, title, imagePath;
  Color bgColor;

  CategoryDM(
      {required this.id,
      required this.title,
      required this.bgColor,
      required this.imagePath});

  static List<CategoryDM> getAllCategories() => [
        CategoryDM(
            id: ConstantManager.sportsID,
            title: StringsManager.sports,
            bgColor: ColorsManager.redd,
            imagePath: AssetsManager.sportsBg),
    CategoryDM(
        id: ConstantManager.generalID,
        title: StringsManager.general,
        bgColor: ColorsManager.darkBlue,
        imagePath: AssetsManager.politicsBg),
    CategoryDM(
        id: ConstantManager.healthID,
        title: StringsManager.health,
        bgColor: ColorsManager.pink,
        imagePath: AssetsManager.healthBg),
    CategoryDM(
        id: ConstantManager.businessID,
        title: StringsManager.business,
        bgColor: ColorsManager.brown,
        imagePath: AssetsManager.businessBg),
    CategoryDM(
        id: ConstantManager.technologyID,
        title: StringsManager.technology,
        bgColor: ColorsManager.babyBlue,
        imagePath: AssetsManager.environmentBg),
    CategoryDM(
        id: ConstantManager.scienceID,
        title: StringsManager.science,
        bgColor: ColorsManager.yellow,
        imagePath: AssetsManager.scienceBg),


      ];
}
