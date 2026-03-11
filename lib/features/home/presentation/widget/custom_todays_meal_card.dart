import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomTodaysMeaCard extends StatelessWidget {
  const CustomTodaysMeaCard({
    super.key,
    required this.onTapViewAll,
    required this.caloryTake,
    required this.totalCalory,
    required this.breakfastFoodName,
    required this.lunchFoodName,
    required this.breakfastCalory,
    required this.lunchCalory,
    required this.consumedCaloryText,
    required this.progressbar,
  });

  final String caloryTake;
  final String totalCalory;
  final String breakfastFoodName;
  final String lunchFoodName;
  final String breakfastCalory;
  final String lunchCalory;
  final String consumedCaloryText;
  final VoidCallback onTapViewAll;
  final Widget progressbar;

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
                Text(
                  "Today's Meals",
                  style: TextFontStyle.txtfontstyle16w600c212121,
                ),
                GestureDetector(
                  onTap: onTapViewAll,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300.r),
                      color: AppColors.cDDFFE8,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    child: Text(
                      'View all',
                      style: TextFontStyle.txtfontstyle12w400c4CAF50,
                    ),
                  ),
                ),
              ],
            ),

            UIHelper.verticalSpace(8.h),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              "$caloryTake/$totalCalory calories",
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
                      color: AppColors.cFFF7ED,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Breakfast',
                              style: TextFontStyle
                                  .txtfontstyle14w600c212121montserrat,
                            ),
                            SvgPicture.asset(AppIcons.breakfast),
                          ],
                        ),

                        UIHelper.verticalSpace(8.h),

                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          breakfastFoodName,
                          style: TextFontStyle.txtfontstyle12w400c4B5563,
                        ),

                        UIHelper.verticalSpace(4.h),
                        Text(
                          breakfastCalory,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle12w500cFF5722,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lunch',
                              style: TextFontStyle
                                  .txtfontstyle14w600c212121montserrat,
                            ),
                            SvgPicture.asset(AppIcons.lunch),
                          ],
                        ),

                        UIHelper.verticalSpace(8.h),
                        Text(
                          lunchFoodName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle12w400c4B5563,
                        ),
                        UIHelper.verticalSpace(4.h),
                        Text(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          lunchCalory,
                          style: TextFontStyle.txtfontstyle12w500cFF5722
                              .copyWith(color: AppColors.c16A34A),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: UIHelper.customDivider(),
            ),

            progressbar,
            UIHelper.verticalSpace(10.h),

            Text(
              consumedCaloryText,
              style: TextFontStyle.txtfontstyle12w400c6B7280,
            ),
          ],
        ),
      ),
    );
  }
}
