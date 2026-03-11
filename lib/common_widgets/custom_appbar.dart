// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? svgimg;
  final VoidCallback onTap;
  final Color? appbarColor;
  const CustomAppbar({
    super.key,
    this.title,
    this.svgimg,
    required this.onTap,
    this.appbarColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: appbarColor,
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

          if (title != null)
            Center(
              child: Text(
                title!,
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
