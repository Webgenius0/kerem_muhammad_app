import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomTodaysTrainingCard extends StatelessWidget {
  const CustomTodaysTrainingCard({
    super.key,
    required this.workoutImage,
    required this.workoutminute,
    required this.onTap,
    required this.workoutName,
    required this.exerciseText,
    required this.donePauseIcon,
    this.isSelected = false,
  });

  final String workoutImage;
  final String workoutminute;
  final String workoutName;
  final VoidCallback onTap;
  final String exerciseText;
  final String donePauseIcon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(12.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.cF5F5F5,
            border: Border.all(
              color: isSelected ? AppColors.cFF5722 : Colors.transparent,
              width: 1.w,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                workoutImage,
                width: 66.w,
                height: 54.h,
                fit: BoxFit.cover,
              ),
              UIHelper.horizontalspace12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      workoutName,
                      style: TextFontStyle.txtfontstyle14w600c212121montserrat,
                    ),
                    UIHelper.verticalSpace(4.h),
                    Text(
                      exerciseText,
                      style: TextFontStyle.txtfontstyle14w400c4B5563montserrat,
                    ),
                    UIHelper.verticalSpace(4.h),
                    Text(
                      workoutminute,
                      style: TextFontStyle.txtfontstyle10w400c637381montserrat,
                    ),
                  ],
                ),
              ),
              UIHelper.horizontalspace12,
              SvgPicture.asset(donePauseIcon, height: 36.h, width: 36.w),
            ],
          ),
        ),
      ),
    );
  }
}
