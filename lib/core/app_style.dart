import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_appp/core/colors_manager.dart';

class LightAppStyle {
  static TextStyle appBar = GoogleFonts.exo(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.whitee,
  );
  static TextStyle drawerTitle = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.whitee,
  );
  static TextStyle categories = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.blackk,
  );
  static TextStyle settings = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.blackk,
  );
  static TextStyle categoryTitle = GoogleFonts.poppins(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.grey,
  );
  static TextStyle categoryItemTitle = GoogleFonts.exo(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.whitee,
  );
  static TextStyle selectedLabel = GoogleFonts.exo(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.whitee,
  );
  static TextStyle unSelectedLabel = GoogleFonts.exo(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.green,
  );
  static TextStyle articleSource = GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grey,
  );
  static TextStyle articleTitle = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.darkGrey,
  );
  static TextStyle articleTimePuplished = GoogleFonts.inter(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grey,
  );
  static TextStyle articleContent = GoogleFonts.poppins(
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
    color: ColorsManager.darkGrey,
  );
  static TextStyle viewFullArticle = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.darkGrey,
  );


}
