import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomStreakChallangesCard extends StatelessWidget {
  const CustomStreakChallangesCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTapDetails,
    required this.dailyStreaktitle,
    required this.dailyStreaksubtitle,
    required this.daysNumber,
    required this.challangeText,
    required this.challangeprogresstext,
    required this.progresswidget,
  });
  final String title;
  final String subtitle;
  final VoidCallback onTapDetails;
  final String dailyStreaktitle;
  final String dailyStreaksubtitle;
  final String daysNumber;
  final String challangeText;
  final String challangeprogresstext;
  final Widget progresswidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        padding: EdgeInsets.all(16.sp),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextFontStyle.txtfontstyle16w600c212121),
                GestureDetector(
                  onTap: onTapDetails,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300.r),
                      color: AppColors.cDBEAFE,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    child: Text(
                      'Details',
                      style: TextFontStyle.txtfontstyle12w400c2563EB,
                    ),
                  ),
                ),
              ],
            ),

            UIHelper.verticalSpace(8.h),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              subtitle,
              style: TextFontStyle.txtfontstyle14w400c6B7280,
            ),
            UIHelper.verticalspace16,

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.cFEF2F2,
              ),
              padding: EdgeInsets.all(16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dailyStreaktitle,
                            style: TextFontStyle.txtfontstyle16w600c212121,
                          ),
                          UIHelper.verticalSpace(8.h),
                          Text(
                            dailyStreaksubtitle,
                            style: TextFontStyle.txtfontstyle14w400c4B5563,
                          ),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.sp),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(260.r),
                              color: AppColors.cF44336,
                            ),
                            child: Text(
                              daysNumber,
                              style: TextFontStyle.txtfontstyle16w700cFFFFFF,
                            ),
                          ),

                          UIHelper.verticalSpace(4.h),
                          Text(
                            'days',
                            style: TextFontStyle.txtfontstyle12w400c4B5563,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            UIHelper.verticalspace16,

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.cF8F8F8,
              ),
              padding: EdgeInsets.all(12.sp),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      challangeText,
                      style: TextFontStyle.txtfontstyle14w500c374151,
                    ),
                  ),

                  UIHelper.horizontalSpace(8.w),

                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(child: progresswidget),
                        UIHelper.horizontalSpace(8.w),
                        Text(
                          challangeprogresstext,
                          style: TextFontStyle.txtfontstyle12w400c6B7280,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
