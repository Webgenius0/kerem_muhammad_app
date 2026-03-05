// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomAppBarDivider extends StatelessWidget
    implements PreferredSizeWidget {
  final String? title;
  final String? svgimg;
  final VoidCallback onTap;

  const CustomAppBarDivider({
    super.key,
    this.title,
    this.svgimg,
    required this.onTap,
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
                child: Container(
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                    color: AppColors.primary10percent,
                    borderRadius: BorderRadius.circular(200.r),
                  ),
                  child: SvgPicture.asset(
                    svgimg!,
                    height: 26.h,
                    width: 26.w,
                    colorFilter: const ColorFilter.mode(
                      AppColors.primarycolor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),

          if (title != null)
            Center(
              child: Text(
                title!,
                style: TextFontStyle.txtfontstyle24w500primaryColor,
              ),
            ),
        ],
      ),

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.h),
        child: Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: UIHelper.customDivider(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 1);
}
