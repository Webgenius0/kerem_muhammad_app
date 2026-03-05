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
        color: AppColors.primarycolor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: dropdownwidget,
    );
  }
}
