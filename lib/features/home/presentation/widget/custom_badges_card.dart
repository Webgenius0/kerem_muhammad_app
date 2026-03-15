import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomBadgesCard extends StatelessWidget {
  const CustomBadgesCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.status,
    this.index,
  });

  final String icon;
  final String title;
  final String subtitle;
  final String status;
  final int? index;

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    Color statusTextColor;

    if (index != null && (index == 0 || index == 1)) {
      buttonColor = AppColors.cD4FFE3;
      statusTextColor = AppColors.c16911B;
    } else {
      buttonColor = AppColors.cF4F6F8;
      statusTextColor = AppColors.c919EAB;
    }

    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.cFFFFFF,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            offset: Offset(0, 4),
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icon, height: 40.h),
          UIHelper.verticalspace16,
          Flexible(
            child: Text(
              textAlign: TextAlign.center,
              title,
              style: TextFontStyle.txtfontstyle16w700c212121,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          UIHelper.verticalspace12,
          Flexible(
            child: Text(
              textAlign: TextAlign.center,
              subtitle,
              style: TextFontStyle.txtfontstyle14w400c637381,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          UIHelper.verticalspace16,
          IntrinsicWidth(
            child: Container(
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(300.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              child: Center(
                child: Text(
                  status,
                  style: TextFontStyle.txtfontstyle12w400c16911B.copyWith(
                    color: statusTextColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
