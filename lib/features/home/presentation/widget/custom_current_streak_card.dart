import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomCurrentStreakCard extends StatelessWidget {
  final String title;
  final String days;
  final String subtitle;

  final String? svgIcon1;
  final String? svgIcon2;
  final String? svgIcon3;
  final String? svgIcon4;
  final String? svgIcon5;
  final String? svgIcon6;
  final String? svgIcon7;

  final String? number1;
  final String? number2;
  final String? number3;
  final String? number4;
  final String? number5;
  final String? number6;
  final String? number7;

  const CustomCurrentStreakCard({
    super.key,
    required this.title,
    required this.days,
    required this.subtitle,
    this.svgIcon1,
    this.svgIcon2,
    this.svgIcon3,
    this.svgIcon4,
    this.svgIcon5,
    this.svgIcon6,
    this.svgIcon7,
    this.number1,
    this.number2,
    this.number3,
    this.number4,
    this.number5,
    this.number6,
    this.number7,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.cFF5722,

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
            Center(
              child: Text(
                textAlign: TextAlign.center,
                title,
                style: TextFontStyle.txtfontstyle18w700cFFFFFF,
              ),
            ),
            UIHelper.verticalSpace(20.h),
            Center(
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                days,
                style: TextFontStyle.txtfontstyle32w700cFFFFF,
              ),
            ),
            UIHelper.verticalSpace(8.h),
            Center(
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                subtitle,
                style: TextFontStyle.txtfontstyle14w400cFFFFF,
              ),
            ),
            UIHelper.verticalSpace(10.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (svgIcon1 != null || number1 != null)
                  Flexible(child: _buildItem(svgIcon1, number1)),
                if (svgIcon2 != null || number2 != null)
                  Flexible(child: _buildItem(svgIcon2, number2)),
                if (svgIcon3 != null || number3 != null)
                  Flexible(child: _buildItem(svgIcon3, number3)),
                if (svgIcon4 != null || number4 != null)
                  Flexible(child: _buildItem(svgIcon4, number4)),
                if (svgIcon5 != null || number5 != null)
                  Flexible(child: _buildItem(svgIcon5, number5)),
                if (svgIcon6 != null || number6 != null)
                  Flexible(child: _buildItem(svgIcon6, number6)),
                if (svgIcon7 != null || number7 != null)
                  Flexible(child: _buildItem(svgIcon7, number7)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String? svgIcon, String? number) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(160.r),
        color: AppColors.ccFFFF10percent,
      ),
      padding: svgIcon != null
          ? EdgeInsets.all(8.sp)
          : EdgeInsets.symmetric(vertical: 12.h),
      alignment: Alignment.center,
      child: svgIcon != null
          ? SvgPicture.asset(
              svgIcon,
              width: 24.w,
              height: 24.h,
              colorFilter: const ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            )
          : Text(number ?? '', style: TextFontStyle.txtfontstyle14w400cFFFFF),
    );
  }
}
