import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({
    super.key,
    required this.title,
    required this.numbners,
    required this.numberstextColor,
  });
  final String title;
  final String numbners;
  final Color numberstextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.cFFFFFF,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            offset: Offset(0, 4),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numbners,
            style: TextFontStyle.txtfontstyle20w700c2563EB.copyWith(
              color: numberstextColor,
            ),
          ),
          UIHelper.verticalSpace(8.h),
          Text(title, style: TextFontStyle.txtfontstyle12w500c637381),
        ],
      ),
    );
  }
}
