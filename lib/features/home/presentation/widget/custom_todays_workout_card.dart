import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomTodaysWorkoutCard extends StatelessWidget {
  const CustomTodaysWorkoutCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTapViewAll,
    required this.trainingTitle,
    required this.minutext,
    required this.calorytext,

    required this.currenttitle,
    required this.listviewBuilder,
  });
  final String title;
  final String subtitle;
  final VoidCallback onTapViewAll;
  final String trainingTitle;
  final String minutext;
  final String calorytext;
  final String currenttitle;
  final Widget listviewBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
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
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextFontStyle.txtfontstyle16w600c212121),
                GestureDetector(
                  onTap: onTapViewAll,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300.r),
                      color: AppColors.cFFF2F0,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    child: Text(
                      'View all',
                      style: TextFontStyle.txtfontstyle12w400cEA4833montserrat,
                    ),
                  ),
                ),
              ],
            ),

            UIHelper.verticalSpace(8.h),
            Text(
              subtitle,
              style: TextFontStyle.txtfontstyle14w400c6B7280montserrat,
            ),

            UIHelper.verticalspace16,

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.cFF5722,
              ),
              padding: EdgeInsets.all(16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upper Body Strength',
                    style: TextFontStyle.txtfontstyle14w600cFFFFFF1,
                  ),
                  UIHelper.verticalspace12,
                  Row(
                    children: [
                      // 1. Minutes Section
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit
                              .scaleDown, // Shrinks text slightly if it's too long
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.min, width: 14.w),
                              UIHelper.horizontalSpace(6.w),
                              Text(
                                '$minutext min',
                                style: TextFontStyle.txtfontstyle12w500cFFFFFF,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // 2. Calories Section
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.min, width: 14.w),
                              UIHelper.horizontalSpace(6.w),
                              Text(
                                '$calorytext cal',
                                style: TextFontStyle.txtfontstyle12w500cFFFFFF,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // 3. Current Title Section (The one causing the issue)
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(AppIcons.min, width: 14.w),
                              UIHelper.horizontalSpace(6.w),
                              Text(
                                currenttitle,
                                style: TextFontStyle.txtfontstyle12w500cFFFFFF,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(10.h),

            listviewBuilder,
          ],
        ),
      ),
    );
  }
}
