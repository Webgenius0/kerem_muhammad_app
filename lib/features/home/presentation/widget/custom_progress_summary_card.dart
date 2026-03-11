import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomProgressSummaryCard extends StatelessWidget {
  const CustomProgressSummaryCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.allWorkout,
    required this.completeworkout,
    required this.workouText,
    required this.weight,
    required this.weighText,
    required this.calories,
    required this.caloriesText,
    required this.avghr,
    required this.avghrText,
    required this.details,
  });

  final String title;
  final String subtitle;
  final String allWorkout;
  final String completeworkout;
  final String workouText;
  final String weight;
  final String weighText;
  final String calories;
  final String caloriesText;
  final String avghr;
  final String avghrText;
  final VoidCallback details;

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
                  onTap: details,
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

            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.cFAF5FF,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.workoutdubmall),
                            UIHelper.horizontalSpace(8.w),
                            Text(
                              'Workouts',
                              style: TextFontStyle.txtfontstyle13w400c4B5563,
                            ),
                          ],
                        ),

                        UIHelper.verticalSpace(8.h),

                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          "$completeworkout/$allWorkout",
                          style: TextFontStyle.txtfontstyle20w700c212121,
                        ),

                        UIHelper.verticalSpace(4.h),
                        Text(
                          workouText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle11w400c6B7280,
                        ),
                      ],
                    ),
                  ),
                ),

                UIHelper.horizontalspace16,

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.cF0FDF4,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.weight),
                            UIHelper.horizontalSpace(8.w),
                            Text(
                              'Weight',
                              style: TextFontStyle.txtfontstyle13w400c4B5563,
                            ),
                          ],
                        ),

                        UIHelper.verticalSpace(8.h),

                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          weight,
                          style: TextFontStyle.txtfontstyle20w700c212121,
                        ),

                        UIHelper.verticalSpace(4.h),
                        Text(
                          weighText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle11w400c6B7280,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.cFFF7ED,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.caloryColor),
                            UIHelper.horizontalSpace(8.w),
                            Text(
                              'Calories',
                              style: TextFontStyle.txtfontstyle13w400c4B5563,
                            ),
                          ],
                        ),

                        UIHelper.verticalSpace(8.h),

                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          calories,
                          style: TextFontStyle.txtfontstyle20w700c212121,
                        ),

                        UIHelper.verticalSpace(4.h),
                        Text(
                          caloriesText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle11w400c6B7280,
                        ),
                      ],
                    ),
                  ),
                ),

                UIHelper.horizontalspace16,

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.cFFF7ED,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.avghr),
                            UIHelper.horizontalSpace(8.w),
                            Text(
                              'Avg HR',
                              style: TextFontStyle.txtfontstyle13w400c4B5563,
                            ),
                          ],
                        ),

                        UIHelper.verticalSpace(8.h),

                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          avghr,
                          style: TextFontStyle.txtfontstyle20w700c212121,
                        ),

                        UIHelper.verticalSpace(4.h),
                        Text(
                          avghrText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle11w400c6B7280,
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
    );
  }
}
