import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomButtonprimary extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color buttonColor;
  final Color textColor;
  final String? svgicon;
  final double? fontSize;

  const CustomButtonprimary({
    super.key,
    required this.title,
    required this.onTap,
    required this.buttonColor,
    required this.textColor,
    this.svgicon,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgicon != null) SvgPicture.asset(svgicon!),
            UIHelper.horizontalSpace(6.w),
            Text(
              title,
              style: TextFontStyle.txtfontstyle24w500primaryColor.copyWith(
                color: textColor,
                fontSize: fontSize ?? 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
