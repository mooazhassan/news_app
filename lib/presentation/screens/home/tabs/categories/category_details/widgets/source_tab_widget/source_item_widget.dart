import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_appp/core/app_style.dart';
import 'package:news_appp/core/colors_manager.dart';

import '../../../../../../../../../data/models/s_response/sources.dart';




class SourceItemWidget extends StatelessWidget {
  SourceItemWidget({super.key, required this.source, required this.isSelected});

  Sources source;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        source.name ?? '',
        style: isSelected
            ? LightAppStyle.selectedLabel
            : LightAppStyle.unSelectedLabel,
      ),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.green : Colors.transparent,
        borderRadius: BorderRadius.circular(25.r),
        border: Border.all(
          color: ColorsManager.green,
          width: 2,
        ),
      ),
    );
  }
}
