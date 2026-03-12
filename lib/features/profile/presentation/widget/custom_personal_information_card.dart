import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomPersonalInformationCard extends StatelessWidget {
  const CustomPersonalInformationCard({
    super.key,
    required this.title,
    required this.height,
    required this.currentweight,
    required this.goalWeight,
    required this.activitylecel,
  });
  final String title;
  final String height;
  final String currentweight;
  final String goalWeight;
  final String activitylecel;

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
            Text(title, style: TextFontStyle.txtfontstyle16w600c212121),
            UIHelper.verticalSpace(20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Height', style: TextFontStyle.txtfontstyle14w400c4B5563),
                Text(height, style: TextFontStyle.txtfontstyle14w600c212121),
              ],
            ),
            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current Weight',
                  style: TextFontStyle.txtfontstyle14w400c4B5563,
                ),
                Text(
                  currentweight,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),
            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Goal Weight',
                  style: TextFontStyle.txtfontstyle14w400c4B5563,
                ),
                Text(
                  goalWeight,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),
            UIHelper.verticalspace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Activity Level',
                  style: TextFontStyle.txtfontstyle14w400c4B5563,
                ),
                Text(
                  activitylecel,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
