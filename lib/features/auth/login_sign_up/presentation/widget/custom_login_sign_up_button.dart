import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class CustomLoginSignUpButton extends StatelessWidget {
  const CustomLoginSignUpButton({
    super.key,
    required this.title,
    required this.authicon,
    required this.onTap,
  });
  final String title;
  final String authicon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: AppColors.c1D122D,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),

      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(160.r),
              color: AppColors.c0x1AD7D7D7,
            ),
            child: SvgPicture.asset(authicon, height: 18.h, width: 18.w),
          ),

          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextFontStyle.txtfontstyle16w400cD7D7D7,
              ),
            ),
          ),

          SizedBox(width: 32.w),
        ],
      ),
    );
  }
}
