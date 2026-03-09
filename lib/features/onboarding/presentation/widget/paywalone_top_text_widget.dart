import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class PaywaloneTopTextWidget extends StatelessWidget {
  const PaywaloneTopTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text(
          'Restore',
          style: TextFontStyle.txtfontstyle16w500c0x800201.copyWith(
            decoration: TextDecoration.underline,
            fontSize: 11.sp,
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: AppColors.c686868,
            ),
            padding: EdgeInsets.all(2.sp),
          ),
        ),
        Text(
          'User ID',
          style: TextFontStyle.txtfontstyle16w500c0x800201.copyWith(
            decoration: TextDecoration.underline,
            fontSize: 11.sp,
          ),
        ),
      ],
    );
  }
}
