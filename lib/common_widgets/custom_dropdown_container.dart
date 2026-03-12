import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';

class CustomDropdownContainer extends StatelessWidget {
  const CustomDropdownContainer({super.key, required this.dropdownwidget});
  final Widget dropdownwidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.cF9FAFB,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.cDFE3E8, width: 1.w),
      ),
      child: dropdownwidget,
    );
  }
}
