import 'package:flutter/material.dart';
import 'package:news_appp/core/colors_manager.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      color: ColorsManager.green,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: ColorsManager.whitee,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(50),
        ),
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
