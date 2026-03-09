import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class CustomLongTermContainerWidget extends StatelessWidget {
  const CustomLongTermContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.c212121, width: 1.5.w),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      child: Text(
        textAlign: TextAlign.center,
        '80% of FitForge Users maintain their weight loss over 6monts',
        style: TextFontStyle.txtfontstyle14w800c212121,
      ),
    );
  }
}
