import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import '../constants/text_font_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? borderColor;
  final Color? bgColor;
  final Color? textColor;
  final double? borderRadius;
  final String? svgicon;
  final Color? svgIconColor;
  final double? fontSize;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.borderColor = AppColors.cFFFFFF,
    this.bgColor = AppColors.cFFFFFF,
    this.textColor = AppColors.cFFFFFF,
    this.borderRadius,
    this.svgicon,
    this.svgIconColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: borderColor!, width: 1.w),
          borderRadius: BorderRadius.circular(borderRadius ?? 100.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgicon != null) ...[
              SvgPicture.asset(
                svgicon!,
                height: 16.h,
                width: 16.w,
                colorFilter: svgIconColor != null
                    ? ColorFilter.mode(svgIconColor!, BlendMode.srcIn)
                    : null,
              ),
              SizedBox(width: 6.w),
            ],
            Text(
              text.tr,
              textAlign: TextAlign.center,
              style: TextFontStyle.txtfontstyle16w600cFFFFFF.copyWith(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
