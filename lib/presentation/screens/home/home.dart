import 'package:flutter/material.dart';
import 'package:news_appp/core/app_style.dart';
import 'package:news_appp/core/assets_manager.dart';
import 'package:news_appp/core/strings_manager.dart';
import 'package:news_appp/models/categoryDM.dart';
import 'package:news_appp/presentation/screens/home/home_drawer/home_drawer.dart';
import 'package:news_appp/presentation/screens/home/tabs/categories/categories.dart';
import 'package:news_appp/presentation/screens/home/tabs/categories/category_details/category_details.dart';
import 'package:news_appp/presentation/screens/home/tabs/settings/settings.dart';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    selectedTab = Categories(onCategoryClicked: onCategoryClicked);
  }

  late Widget selectedTab;

  String appBarTitle = 'News App';

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
        appBar: AppBar(
          title: Text(
            appBarTitle,
            style: LightAppStyle.appBar,
          ),
        ),
        drawer: HomeDrawer(
          onMenuItemClicked: onDrawerItemClick,
        ),
        body: selectedTab,
      ),
    );
  }

  void onCategoryClicked(CategoryDM catgory) {
    selectedTab = CategoryDetails(categoryDM: catgory);
    appBarTitle = catgory.title;
    setState(() {});
  }

  void onDrawerItemClick(MenuItem pos) {
    Navigator.pop(context);
    if (pos == MenuItem.categories) {
      selectedTab = Categories(onCategoryClicked: onCategoryClicked);
      appBarTitle=StringsManager.categories;
    } else if (pos == MenuItem.settings) {
      selectedTab = Settings();
      appBarTitle=StringsManager.settings;

    }
    setState(() {});
  }
}
