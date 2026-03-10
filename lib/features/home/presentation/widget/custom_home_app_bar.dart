// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? svgimg;
  final VoidCallback onTap;
  final String? currentStep;
  final String? righttitleText;
  final VoidCallback? onTapSkip;

  const CustomHomeAppBar({
    super.key,

    this.svgimg,
    required this.onTap,
    this.currentStep,
    this.righttitleText,
    this.onTapSkip,
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
                  width: 20.w,
                  height: 14.h,

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
            child: Text.rich(
              TextSpan(
                text: 'Step ',
                style: TextFontStyle.txtfontstyle16w700c212121,
                children: <TextSpan>[
                  TextSpan(
                    text: '$currentStep ',
                    style: TextFontStyle.txtfontstyle16w700c212121,
                  ),
                  TextSpan(
                    text: 'of 12',
                    style: TextFontStyle.txtfontstyle16w400c5C5C5C,
                  ),
                ],
              ),
            ),
          ),

          if (righttitleText != null)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: onTapSkip,
                child: Text(
                  righttitleText!,
                  style: TextFontStyle.txtfontstyle17w400c212121,
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
