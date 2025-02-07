import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_appp/core/app_style.dart';
import 'package:news_appp/core/colors_manager.dart';
import 'package:news_appp/core/strings_manager.dart';

typedef OnMenuItemClicked = void Function(MenuItem);

class HomeDrawer extends StatelessWidget {
  HomeDrawer({super.key, required this.onMenuItemClicked});

  OnMenuItemClicked onMenuItemClicked;
  static const categories = 1;
  static const settings = 2;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              StringsManager.drawerTitle,
              style: LightAppStyle.drawerTitle,
            ),
            height: 110.h,
            width: double.infinity,
            color: ColorsManager.green,
          ),
          SizedBox(
            height: 20.h,
          ),
          // Padding(
          //   padding: REdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.view_list_sharp,
          //         size: 30.sp,
          //       ),
          //       SizedBox(
          //         width: 8.w,
          //       ),
          //       Text(
          //         StringsManager.categories,
          //         style: LightAppStyle.categories,
          //       ),
          //     ],
          //   ),
          // ),
          buildDrawerItem(
              icon: Icons.view_list_sharp,
              text: StringsManager.categories,
              pos: MenuItem.categories,
              onClicked: onMenuItemClicked),
          buildDrawerItem(
              icon: Icons.settings,
              text: StringsManager.settings,
              pos: MenuItem.settings,
              onClicked: onMenuItemClicked),

          // Padding(
          //   padding: REdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.settings,
          //         size: 30.sp,
          //       ),
          //       SizedBox(
          //         width: 8.w,
          //       ),
          //       Text(
          //         StringsManager.settings,
          //         style: LightAppStyle.settings,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  Widget buildDrawerItem(
      {IconData? icon,
      required String text,
      required MenuItem pos,
      required OnMenuItemClicked onClicked}) {
    return Padding(
      padding: REdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          onClicked(pos);
        },
        child: Row(
          children: [
            Icon(
              icon,
              size: 30.sp,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              text,
              style: LightAppStyle.categories,
            ),
          ],
        ),
      ),
    );
  }
}

enum MenuItem {
  categories,
  settings,
}
