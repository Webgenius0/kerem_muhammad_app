import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomRewardTopCardWidget extends StatelessWidget {
  const CustomRewardTopCardWidget({
    super.key,
    required this.titleBadge,
    required this.titldaystreak,
    required this.titltotalPoints,
    required this.numberBadge,
    required this.numberdaystreak,
    required this.numberpoints,
  });

  final String titleBadge;
  final String titldaystreak;
  final String titltotalPoints;
  final String numberBadge;
  final String numberdaystreak;
  final String numberpoints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      child: Row(
        spacing: 16.w,
        children: [
          Expanded(
            child: Container(
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
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.reward),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    textAlign: TextAlign.center,
                    numberBadge,
                    style: TextFontStyle.txtfontstyle16w700c212121,
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    textAlign: TextAlign.center,
                    titleBadge,
                    style: TextFontStyle.txtfontstyle12w400c637381,
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
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
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.fire),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    textAlign: TextAlign.center,
                    numberdaystreak,
                    style: TextFontStyle.txtfontstyle16w700c212121,
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    textAlign: TextAlign.center,
                    titldaystreak,
                    style: TextFontStyle.txtfontstyle12w400c637381,
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
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
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.points),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    textAlign: TextAlign.center,
                    numberpoints,
                    style: TextFontStyle.txtfontstyle16w700c212121,
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    textAlign: TextAlign.center,
                    titltotalPoints,
                    style: TextFontStyle.txtfontstyle12w400c637381,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(12.r),
    //     color: AppColors.cFFFFFF,
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.black.withAlpha(20),
    //         offset: Offset(0, 4),
    //         blurRadius: 20,
    //         spreadRadius: 0,
    //       ),
    //     ],
    //   ),
    //   padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),

    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       SvgPicture.asset(icon),
    //       UIHelper.verticalSpace(8.h),
    //       Text(
    //         textAlign: TextAlign.center,
    //         number,
    //         style: TextFontStyle.txtfontstyle16w700c212121,
    //       ),
    //       UIHelper.verticalSpace(4.h),
    //       Text(
    //         textAlign: TextAlign.center,
    //         title,
    //         style: TextFontStyle.txtfontstyle12w400c637381,
    //       ),
    //     ],
    //   ),
    // );
  }
}
