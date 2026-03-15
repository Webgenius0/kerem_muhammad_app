// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? svgimg;
  final String? rightSvgIcon;
  final VoidCallback? onTap;
  final VoidCallback? onRightTap;
  final Color? appbarColor;

  const CustomAppbar({
    super.key,
    this.title,
    this.svgimg,
    this.rightSvgIcon,
    this.onTap,
    this.onRightTap,
    this.appbarColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: appbarColor ?? Colors.transparent,
      automaticallyImplyLeading: false,

      leading: svgimg != null
          ? GestureDetector(
              onTap: onTap,
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: SvgPicture.asset(
                  svgimg!,
                  width: 20.w,
                  height: 20.h,
                  colorFilter: const ColorFilter.mode(
                    AppColors.c454545,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            )
          : null,

      title: Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: Text(
          title ?? "",
          style: TextFontStyle.txtfontstyle18w600c212121,
        ),
      ),
      actions: rightSvgIcon != null
          ? [
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: GestureDetector(
                  onTap: onRightTap,
                  child: Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.cFF5722,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        rightSvgIcon!,
                        width: 22.w,
                        height: 22.h,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
