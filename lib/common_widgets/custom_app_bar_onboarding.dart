// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomAppBarOnboarding extends StatelessWidget
    implements PreferredSizeWidget {
  final String? svgimg;
  final VoidCallback onTap;
  final String currentStep;

  const CustomAppBarOnboarding({
    super.key,

    this.svgimg,
    required this.onTap,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.cFFFFFF,
      automaticallyImplyLeading: false,
      title: Stack(
        alignment: Alignment.center,
        children: [
          if (svgimg != null)
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: onTap,
                child: SvgPicture.asset(
                  svgimg!,
                  height: 26.h,
                  width: 26.w,
                  colorFilter: ColorFilter.mode(
                    AppColors.c454545,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),

          Padding(
            padding: EdgeInsets.only(top: 100.h),
            child: UIHelper.customDivider(),
          ),

          Center(
            child: Text(
              "Step $currentStep of 12",
              style: TextFontStyle.txtfontstyle26w600cFFFFF,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
