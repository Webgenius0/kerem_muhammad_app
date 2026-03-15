import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomCameraWidget extends StatelessWidget {
  const CustomCameraWidget({
    super.key,
    required this.onTapCamera,
    required this.onTapChoosePicture,
    this.image,
  });

  final VoidCallback onTapCamera;
  final VoidCallback onTapChoosePicture;
  final File? image;

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      width: MediaQuery.of(context).size.width,
      height: 200.h,
      decoration: BoxDecoration(
        color: AppColors.cF0F0F0,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: image != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.file(
                image!,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
            ),
    );

    if (image == null) {
      return DottedBorder(
        options: RoundedRectDottedBorderOptions(
          color: AppColors.cC4CDD5,
          strokeWidth: 1.w,
          dashPattern: [5, 5],
          radius: Radius.circular(12.r),
        ),
        child: content,
      );
    } else {
      return content;
    }
  }
}
