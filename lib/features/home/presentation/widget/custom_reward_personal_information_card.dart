import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomRewardPersonalInformationCard extends StatelessWidget {
  const CustomRewardPersonalInformationCard({
    super.key,
    required this.longeststreak,
    required this.thismonth,
    required this.totalworkout,
  });

  final String longeststreak;
  final String thismonth;
  final String totalworkout;

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
            Text(
              'Personal Information',
              style: TextFontStyle.txtfontstyle16w600c212121,
            ),

            UIHelper.verticalSpace(20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  'Longest Streak',
                  style: TextFontStyle.txtfontstyle14w400c4B5563,
                ),
                Text(
                  longeststreak,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  'Longest Streak',
                  style: TextFontStyle.txtfontstyle14w400c4B5563,
                ),
                Text(
                  longeststreak,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),
            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  'Longest Streak',
                  style: TextFontStyle.txtfontstyle14w400c4B5563,
                ),
                Text(
                  longeststreak,
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
