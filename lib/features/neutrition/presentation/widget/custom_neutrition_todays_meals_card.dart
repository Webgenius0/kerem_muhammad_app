import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomNeutritionTodaysMealsCard extends StatelessWidget {
  const CustomNeutritionTodaysMealsCard({
    super.key,
    required this.title,
    required this.targetCalories,
    required this.takeCalories,
    required this.foodtype1,
    required this.foodCalory1,
    required this.foodtype2,
    required this.foodCalory2,
    required this.foodtype3,
    required this.foodCalory3,
    required this.caloryConsumedText,
    required this.progresswidget,
  });

  final String title;
  final String targetCalories;
  final String takeCalories;
  final String foodtype1;
  final String foodCalory1;
  final String foodtype2;
  final String foodCalory2;
  final String foodtype3;
  final String foodCalory3;
  final String caloryConsumedText;
  final Widget progresswidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextFontStyle.txtfontstyle18w700c212121),
            UIHelper.verticalSpace(8.h),
            Text(
              "$takeCalories/$takeCalories",
              style: TextFontStyle.txtfontstyle14w400c6B7280montserrat,
            ),
            UIHelper.verticalspace16,

            Row(
              spacing: 16.w,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.cF8F8F8,
                      border: Border.all(color: AppColors.cD1D5DB, width: 1.w),
                    ),
                    padding: EdgeInsets.all(12.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.carbs),
                        UIHelper.verticalSpace(8.h),
                        Text(
                          foodtype1,
                          style: TextFontStyle.txtfontstyle14w600c212121,
                        ),
                        UIHelper.verticalSpace(4.h),
                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          foodCalory1,
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
                      color: AppColors.cF8F8F8,
                      border: Border.all(color: AppColors.cD1D5DB, width: 1.w),
                    ),
                    padding: EdgeInsets.all(12.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.protin),
                        UIHelper.verticalSpace(8.h),
                        Text(
                          foodtype2,
                          style: TextFontStyle.txtfontstyle14w600c212121,
                        ),
                        UIHelper.verticalSpace(4.h),
                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          foodCalory2,
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
                      color: AppColors.cF8F8F8,
                      border: Border.all(color: AppColors.cD1D5DB, width: 1.w),
                    ),
                    padding: EdgeInsets.all(12.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.fat),
                        UIHelper.verticalSpace(8.h),
                        Text(
                          foodtype3,
                          style: TextFontStyle.txtfontstyle14w600c212121,
                        ),
                        UIHelper.verticalSpace(4.h),
                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          foodCalory3,
                          style: TextFontStyle.txtfontstyle12w400c637381,
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

            progresswidget,
            UIHelper.verticalSpace(8.h),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                caloryConsumedText,
                style: TextFontStyle.txtfontstyle12w400c6B7280,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
