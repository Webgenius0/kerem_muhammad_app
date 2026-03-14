import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomProgressTopCardWidget extends StatelessWidget {
  const CustomProgressTopCardWidget({
    super.key,
    required this.title,
    required this.day1,
    required this.day2,
    required this.day3,
    required this.day4,
    required this.day5,
    required this.day6,
    required this.day7,
    required this.progress1Text,
    required this.progress2Text,
    required this.progress3Text,
    required this.progress4Text,
    required this.progress5Text,
    required this.progress6Text,
    required this.progress7Text,
    required this.daypregress1,
    required this.daypregress2,
    required this.daypregress3,
    required this.daypregress4,
    required this.daypregress5,
    required this.daypregress6,
    required this.daypregress7,
  });

  final String title;
  final String day1;
  final String day2;
  final String day3;
  final String day4;
  final String day5;
  final String day6;
  final String day7;
  final String progress1Text;
  final String progress2Text;
  final String progress3Text;
  final String progress4Text;
  final String progress5Text;
  final String progress6Text;
  final String progress7Text;
  final Widget daypregress1;
  final Widget daypregress2;
  final Widget daypregress3;
  final Widget daypregress4;
  final Widget daypregress5;
  final Widget daypregress6;
  final Widget daypregress7;

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

            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(day1, style: TextFontStyle.txtfontstyle14w400c4B5563),

                Expanded(child: daypregress1),

                Text(
                  progress1Text,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),

            UIHelper.verticalspace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(day2, style: TextFontStyle.txtfontstyle14w400c4B5563),

                Expanded(child: daypregress2),

                Text(
                  progress2Text,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),
            UIHelper.verticalspace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(day3, style: TextFontStyle.txtfontstyle14w400c4B5563),

                Expanded(child: daypregress3),

                Text(
                  progress3Text,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),

            UIHelper.verticalspace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(day4, style: TextFontStyle.txtfontstyle14w400c4B5563),
                Expanded(child: daypregress4),
                Text(
                  progress4Text,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),

            UIHelper.verticalspace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(day5, style: TextFontStyle.txtfontstyle14w400c4B5563),

                Expanded(child: daypregress5),

                Text(
                  progress5Text,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(day6, style: TextFontStyle.txtfontstyle14w400c4B5563),

                Expanded(child: daypregress6),

                Text(
                  progress6Text,
                  style: TextFontStyle.txtfontstyle14w600c212121,
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(day7, style: TextFontStyle.txtfontstyle14w400c4B5563),

                Expanded(child: daypregress7),

                Text(
                  progress7Text,
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
