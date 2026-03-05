import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import '../constants/text_font_style.dart';

class CustomIconTitleButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? borderColor;
  final Color? bgColor;
  final Color? textColor;
  final double? borderRadius;
  final String? scgicon;

  const CustomIconTitleButton({
    super.key,
    required this.onTap,
    required this.text,
    this.borderColor = AppColors.cFFFFFF,
    this.bgColor = AppColors.cFFFFFF,
    this.textColor = AppColors.cFFFFFF,
    this.borderRadius,
    this.scgicon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: borderColor!, width: 1.w),
          borderRadius: BorderRadius.circular(borderRadius ?? 100.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (scgicon != null)
              SvgPicture.asset(scgicon!, height: 44.h, width: 44.w),
            Text(
              text.tr,
              style: TextFontStyle.txtfontstyle26w600cFFFFF.copyWith(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
