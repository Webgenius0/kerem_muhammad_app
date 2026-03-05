import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomSelectUnselectContainer extends StatelessWidget {
  const CustomSelectUnselectContainer({
    super.key,
    required this.onTap,

    required this.title,
    required this.selectunselectIcon,
  });
  final VoidCallback onTap;
  final String selectunselectIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(52.r),
        ),
        child: Row(
          children: [
            SizedBox(
              child: SvgPicture.asset(
                selectunselectIcon,
                height: 20.h,
                width: 20.w,
              ),
            ),

            UIHelper.horizontalspace12,
            Text(title, style: TextFontStyle.txtfontstyle26w600cFFFFF),
          ],
        ),
      ),
    );
  }
}
