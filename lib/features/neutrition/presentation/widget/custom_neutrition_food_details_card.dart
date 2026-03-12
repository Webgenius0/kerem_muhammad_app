import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/common_widgets/cached_network_image_widget.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomNeutritionFoodDetailsCard extends StatelessWidget {
  const CustomNeutritionFoodDetailsCard({
    super.key,
    required this.foodImageUrl,
    required this.foodName,
    required this.calory,
    required this.protin,
    required this.carbs,
    required this.fat,
    required this.ingradients1,
    required this.ingradients2,
    required this.ingradients3,
    required this.ingradients4,
    required this.ingradients5,

    required this.markaseatenButton,
    required this.replaceMealButton,
  });
  final String foodImageUrl;
  final String foodName;
  final String calory;
  final String protin;
  final String carbs;
  final String fat;
  final String ingradients1;
  final String ingradients2;
  final String ingradients3;
  final String ingradients4;
  final String ingradients5;

  final Widget markaseatenButton;
  final Widget replaceMealButton;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                topLeft: Radius.circular(16.r),
              ),
              child: CachedNetworkImageWidget(
                imgUrl: foodImageUrl,
                height: 228.h,
                width: MediaQuery.of(context).size.width,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(24.sp),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        foodName,
                        style: TextFontStyle.txtfontstyle16w600c212121,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300.r),
                          color: AppColors.cDCFCE7,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        child: Text(
                          calory,
                          style: TextFontStyle.txtfontstyle12w500c0F7635,
                        ),
                      ),
                    ],
                  ),

                  UIHelper.verticalspace24,
                  Row(
                    spacing: 8.w,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: .center,
                              protin,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextFontStyle.txtfontstyle20w700c2563EB,
                            ),
                            UIHelper.verticalSpace(8.h),
                            Text(
                              'Protein',
                              style: TextFontStyle.txtfontstyle12w500c637381,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: .center,
                              carbs,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextFontStyle.txtfontstyle20w700cFF5722,
                            ),
                            UIHelper.verticalSpace(8.h),
                            Text(
                              'Carbs',
                              style: TextFontStyle.txtfontstyle12w500c637381,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: .center,
                              fat,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextFontStyle.txtfontstyle20w700c9333EA,
                            ),
                            UIHelper.verticalSpace(8.h),
                            Text(
                              'Fat',
                              style: TextFontStyle.txtfontstyle12w500c637381,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  UIHelper.verticalspace24,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Ingredients',
                      style: TextFontStyle.txtfontstyle16w600c212121,
                    ),
                  ),
                  UIHelper.verticalspace12,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.r),
                            color: AppColors.cEEEEEEE,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          child: Text(
                            ingradients1,
                            style: TextFontStyle.txtfontstyle12w400c454545,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.r),
                            color: AppColors.cEEEEEEE,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          child: Text(
                            ingradients2,
                            style: TextFontStyle.txtfontstyle12w400c454545,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.r),
                            color: AppColors.cEEEEEEE,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          child: Text(
                            ingradients3,
                            style: TextFontStyle.txtfontstyle12w400c454545,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.r),
                            color: AppColors.cEEEEEEE,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          child: Text(
                            ingradients4,
                            style: TextFontStyle.txtfontstyle12w400c454545,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.r),
                            color: AppColors.cEEEEEEE,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          child: Text(
                            ingradients5,
                            style: TextFontStyle.txtfontstyle12w400c454545,
                          ),
                        ),
                      ],
                    ),
                  ),

                  UIHelper.verticalspace24,

                  Row(
                    children: [
                      Expanded(
                        child: markaseatenButton,
                        // CustomButton(
                        //   onTap: onTapMarkasEaten,
                        //   text: 'Mark as eaten',
                        //   bgColor: AppColors.c4CAF50,
                        //   borderColor: AppColors.c4CAF50,
                        //   textColor: AppColors.cFFFFFF,
                        // ),
                      ),
                      UIHelper.horizontalspace16,
                      Expanded(child: replaceMealButton),
                    ],
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
