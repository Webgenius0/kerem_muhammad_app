import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomCameraWidget extends StatelessWidget {
  const CustomCameraWidget({
    super.key,
    required this.onTapCamera,
    required this.onTapChoosePicture,
  });

  final VoidCallback onTapCamera;
  final VoidCallback onTapChoosePicture;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: AppColors.cC4CDD5,
        strokeWidth: 1.w,
        dashPattern: [5, 5],
        radius: Radius.circular(12.r),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          color: AppColors.cF0F0F0,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UIHelper.verticalspace24,
            GestureDetector(
              onTap: onTapCamera,
              child: SvgPicture.asset(
                AppIcons.camera,
                height: 44.h,
                width: 44.w,
              ),
            ),
            UIHelper.verticalSpace(8.h),
            GestureDetector(
              onTap: onTapChoosePicture,
              child: Text(
                'Choose a picture',
                style: TextFontStyle.txtfontstyle14w400c637381,
              ),
            ),
            UIHelper.verticalspace24,
          ],
        ),
      ),
    );
  }
}
