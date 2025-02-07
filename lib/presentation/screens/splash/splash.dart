import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_appp/core/assets_manager.dart';

import '../../../core/routes_manager.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, RoutesManager.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            AssetsManager.patternBg,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(
              flex: 1,
            ),
            Image.asset(
              AssetsManager.logoBg,
              width: 199.w,
              height: 208.h,
            ),
            Spacer(),
            Image.asset(
              AssetsManager.routeBg,
              width: 213.w,
              height: 128.h,
            ),

          ],
        )
      ],
    );
  }
}
