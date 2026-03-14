import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomMonthWorkoutCompletionCard extends StatelessWidget {
  const CustomMonthWorkoutCompletionCard({
    super.key,
    required this.title,
    required this.weekText1,
    required this.weekText2,
    required this.weekText3,
    required this.weekText4,
    required this.inprogressText2,
    required this.inprogressText3,
    required this.inprogressText4,
    required this.outprogressText1,
    required this.outprogressText2,
    required this.outprogressText3,
    required this.outprogressText4,
    required this.inprogress1,
    required this.inprogress2,
    required this.inpregross3,
    required this.inpregross4,
    required this.outprogress1,
    required this.outprogress2,
    required this.outprogress3,
    required this.outprogress4,
    required this.inprogressText1,
  });

  final String title;
  final String weekText1;
  final String weekText2;
  final String weekText3;
  final String weekText4;
  final String inprogressText1;
  final String inprogressText2;
  final String inprogressText3;
  final String inprogressText4;
  final String outprogressText1;
  final String outprogressText2;
  final String outprogressText3;
  final String outprogressText4;
  final Widget inprogress1;
  final Widget inprogress2;
  final Widget inpregross3;
  final Widget inpregross4;
  final Widget outprogress1;
  final Widget outprogress2;
  final Widget outprogress3;
  final Widget outprogress4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
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
            Text(title, style: TextFontStyle.txtfontstyle16w600c212121),
            UIHelper.verticalspace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(weekText1, style: TextFontStyle.txtfontstyle14w400c4B5563),
                UIHelper.horizontalSpace(4.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inprogress1,
                      UIHelper.verticalSpace(4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          inprogressText1,
                          style: TextFontStyle.txtfontstyle12w400cFF5722,
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      outprogress1,
                      UIHelper.verticalSpace(4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          outprogressText1,
                          style: TextFontStyle.txtfontstyle12w500c4CAF50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(weekText2, style: TextFontStyle.txtfontstyle14w400c4B5563),
                UIHelper.horizontalSpace(4.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inprogress2,
                      UIHelper.verticalSpace(4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          inprogressText2,
                          style: TextFontStyle.txtfontstyle12w400cFF5722,
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      outprogress2,
                      UIHelper.verticalSpace(4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          outprogressText2,
                          style: TextFontStyle.txtfontstyle12w500c4CAF50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(weekText3, style: TextFontStyle.txtfontstyle14w400c4B5563),
                UIHelper.horizontalSpace(4.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inpregross3,
                      UIHelper.verticalSpace(4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          inprogressText3,
                          style: TextFontStyle.txtfontstyle12w400cFF5722,
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      outprogress3,
                      UIHelper.verticalSpace(4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          outprogressText3,
                          style: TextFontStyle.txtfontstyle12w500c4CAF50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(weekText4, style: TextFontStyle.txtfontstyle14w400c4B5563),
                UIHelper.horizontalSpace(4.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inpregross4,

                      UIHelper.verticalSpace(4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          inprogressText4,
                          style: TextFontStyle.txtfontstyle12w400cFF5722,
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      outprogress4,
                      UIHelper.verticalSpace(4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          outprogressText4,
                          style: TextFontStyle.txtfontstyle12w500c4CAF50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            UIHelper.verticalspace16,
          ],
        ),
      ),
    );
  }
}
