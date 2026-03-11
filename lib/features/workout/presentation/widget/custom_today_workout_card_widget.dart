import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomTodayWorkoutCardWidget extends StatelessWidget {
  const CustomTodayWorkoutCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.bodytrainTitle,
    required this.minute,
    required this.calory,
    required this.workouttype,
    required this.listviewBuilder,
  });

  final String title;
  final String subtitle;
  final String bodytrainTitle;
  final String minute;
  final String calory;
  final String workouttype;
  final Widget listviewBuilder;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextFontStyle.txtfontstyle18w700c212121),
            UIHelper.verticalSpace(8.h),
            Text(subtitle, style: TextFontStyle.txtfontstyle14w400c6B7280),
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
                    bodytrainTitle,
                    style: TextFontStyle.txtfontstyle14w600cFFFFFF1,
                  ),
                  UIHelper.verticalspace12,
                  Row(
                    children: [
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.minute, width: 14.w),
                              UIHelper.horizontalSpace(6.w),
                              Text(
                                minute,
                                style: TextFontStyle.txtfontstyle12w500cFFFFFF,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.calory, width: 14.w),
                              UIHelper.horizontalSpace(6.w),
                              Text(
                                calory,
                                style: TextFontStyle.txtfontstyle12w500cFFFFFF,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(AppIcons.arrowup, width: 14.w),
                              UIHelper.horizontalSpace(6.w),
                              Text(
                                workouttype,
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

            listviewBuilder,
          ],
        ),
      ),
    );
  }
}
