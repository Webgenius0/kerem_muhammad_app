// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/app_constants.dart';

class OnboardingButton extends StatelessWidget {
  void Function()? onTap;
  OnboardingButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 22.w),
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 16.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: AppColors.cFFFFFF,
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(235, 38, 69, 0.28),
              offset: const Offset(0, 12),
              blurRadius: 24,
              spreadRadius: -4,
            ),
          ],
        ),
        child: Icon(
          GetStorage().read(kKeyLanguage) == 'ar'
              ? Icons.keyboard_arrow_left
              : Icons.keyboard_arrow_right,
          color: AppColors.cFFFFFF,
        ),
      ),
    );
  }
}
