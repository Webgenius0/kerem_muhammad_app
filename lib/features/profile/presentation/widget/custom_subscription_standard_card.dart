import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomSubscriptionStandartCard extends StatelessWidget {
  const CustomSubscriptionStandartCard({
    super.key,
    required this.onTap,
    required this.title,
    required this.planPrice,
    required this.plantype,
    required this.plandescription1,
    required this.plandescription2,
    required this.plandescription3,
    required this.plandescription4,
    required this.plandescription5,
    required this.cardBorderColor,
  });
  final VoidCallback onTap;
  final String title;
  final String planPrice;
  final String plantype;
  final String plandescription1;
  final String plandescription2;
  final String plandescription3;
  final String plandescription4;
  final String plandescription5;
  final Color cardBorderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.cFFFFFF,
            border: Border.all(color: cardBorderColor, width: 1.w),

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

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextFontStyle.txtfontstyle16w600c212121inter),

              UIHelper.verticalspace16,

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: planPrice,
                      style: TextFontStyle.txtfontstyle24w600primaryColor,
                    ),
                    TextSpan(
                      text: '  /$plantype',
                      style: TextFontStyle.txtfontstyle16w400c637381,
                    ),
                  ],
                ),
              ),

              // Text('$planPrice /$plantype'),
              UIHelper.verticalSpace(8.h),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.donegrey),
                    UIHelper.horizontalSpace(8.w),
                    Expanded(
                      child: Text(
                        plandescription1,
                        style: TextFontStyle.txtfontstyle14w400c637381,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.donegrey),
                    UIHelper.horizontalSpace(8.w),

                    Expanded(
                      child: Text(
                        plandescription2,
                        style: TextFontStyle.txtfontstyle14w400c637381,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.donegrey),
                    UIHelper.horizontalSpace(8.w),

                    Expanded(
                      child: Text(
                        plandescription3,
                        style: TextFontStyle.txtfontstyle14w400c637381,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.donegrey),
                    UIHelper.horizontalSpace(8.w),
                    Expanded(
                      child: Text(
                        plandescription4,
                        style: TextFontStyle.txtfontstyle14w400c637381,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  SvgPicture.asset(AppIcons.donegrey),
                  UIHelper.horizontalSpace(8.w),

                  Expanded(
                    child: Text(
                      plandescription5,
                      style: TextFontStyle.txtfontstyle14w400c637381,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
