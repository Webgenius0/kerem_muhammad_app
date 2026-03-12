import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomSettingsCard extends StatelessWidget {
  const CustomSettingsCard({
    super.key,
    required this.onTapEditprofile,
    required this.onTapNotification,
    required this.onTapSubscription,
    required this.onTapHelpSupport,
  });

  final VoidCallback onTapEditprofile;
  final VoidCallback onTapNotification;
  final VoidCallback onTapSubscription;
  final VoidCallback onTapHelpSupport;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        padding: EdgeInsets.all(16.r),

        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              offset: Offset(0, 4),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(8.h),
            GestureDetector(
              onTap: onTapEditprofile,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.editprofile,
                        height: 22.h,
                        width: 22.w,
                      ),
                      UIHelper.horizontalSpace(8.w),
                      Text(
                        'Edit Profile',
                        style: TextFontStyle.txtfontstyle14w600c212121,
                      ),
                    ],
                  ),

                  Row(children: [SvgPicture.asset(AppIcons.arrowright)]),
                ],
              ),
            ),

            UIHelper.verticalspace32,

            GestureDetector(
              onTap: onTapNotification,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.notification,
                        height: 22.h,
                        width: 22.w,
                      ),
                      UIHelper.horizontalSpace(8.w),
                      Text(
                        'Notification',
                        style: TextFontStyle.txtfontstyle14w600c212121,
                      ),
                    ],
                  ),

                  Row(children: [SvgPicture.asset(AppIcons.arrowright)]),
                ],
              ),
            ),

            UIHelper.verticalspace32,

            GestureDetector(
              onTap: onTapSubscription,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.subscription,
                        height: 22.h,
                        width: 22.w,
                      ),
                      UIHelper.horizontalSpace(8.w),
                      Text(
                        'Subscription',
                        style: TextFontStyle.txtfontstyle14w600c212121,
                      ),
                    ],
                  ),

                  Row(children: [SvgPicture.asset(AppIcons.arrowright)]),
                ],
              ),
            ),

            UIHelper.verticalspace32,

            GestureDetector(
              onTap: onTapHelpSupport,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.helpsupport,
                        height: 22.h,
                        width: 22.w,
                      ),
                      UIHelper.horizontalSpace(8.w),
                      Text(
                        'Help & Support',
                        style: TextFontStyle.txtfontstyle14w600c212121,
                      ),
                    ],
                  ),

                  Row(children: [SvgPicture.asset(AppIcons.arrowright)]),
                ],
              ),
            ),

            UIHelper.verticalSpace(8.h),
          ],
        ),
      ),
    );
  }
}
