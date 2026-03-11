import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomScheduleContainerWidget extends StatelessWidget {
  const CustomScheduleContainerWidget({
    super.key,
    required this.day,
    required this.date,
    required this.containerColor,
    required this.dayTextColor,
    required this.dateTextColor,
  });

  final String day;
  final String date;
  final Color containerColor;
  final Color dayTextColor;
  final Color dateTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            offset: Offset(0, 4),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextFontStyle.txtfontstyle12w400c898989.copyWith(
              color: dateTextColor,
            ),
          ),
          UIHelper.verticalSpace(4.h),
          Text(
            date,
            style: TextFontStyle.txtfontstyle12w400c898989.copyWith(
              color: dateTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
