import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomAddFoodContainer extends StatelessWidget {
  const CustomAddFoodContainer({super.key, required this.onTapAdd});

  final VoidCallback onTapAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Container(
        width: MediaQuery.of(context).size.width,
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

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.cF5F5F5,
            border: Border.all(color: AppColors.cD1D5DB, width: 1.w),
          ),
          padding: EdgeInsets.all(12.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UIHelper.verticalspace24,

              SvgPicture.asset(AppIcons.foodnotavailable),
              UIHelper.verticalSpace(8.h),
              Text(
                'Food Not Available',
                style: TextFontStyle.txtfontstyle16w500c212121,
              ),
              UIHelper.verticalspace24,
              CustomButton(
                onTap: onTapAdd,
                text: 'Add',
                bgColor: AppColors.primaryColor,
                borderColor: AppColors.primaryColor,
                svgicon: AppIcons.add,
              ),

              UIHelper.verticalspace24,
            ],
          ),
        ),
      ),
    );
  }
}
