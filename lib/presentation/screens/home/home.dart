import 'package:flutter/material.dart';
import 'package:news_appp/core/app_style.dart';
import 'package:news_appp/core/assets_manager.dart';
import 'package:news_appp/presentation/screens/home/home_drawer/home_drawer.dart';
import 'package:news_appp/presentation/screens/home/home_drawer/tabs/categories/categories.dart';
import 'package:news_appp/presentation/screens/home/home_drawer/tabs/settings/settings.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget selectedTab = Categories();

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
            'News App',
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

  void onDrawerItemClick(MenuItem pos) {
    Navigator.pop(context);
    if (pos == MenuItem.categories) {
      selectedTab = Categories();
    } else if (pos == MenuItem.settings) {
      selectedTab = Settings();
    }
    setState(() {});
  }
}
