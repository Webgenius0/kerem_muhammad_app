import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomSubscriptionPlanBillinghistoryCard extends StatelessWidget {
  const CustomSubscriptionPlanBillinghistoryCard({
    super.key,
    required this.cardNumber,
    required this.onTapbillingHistory,
  });
  final String cardNumber;
  final VoidCallback onTapbillingHistory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.cFFFFFF,
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

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.card),
                  UIHelper.horizontalSpace(8.w),
                  Expanded(
                    child: Text(
                      cardNumber,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextFontStyle.txtfontstyle14w400c212121inter,
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: onTapbillingHistory,
              child: Text(
                'Billing history',
                style: TextFontStyle.txtfontstyle14w600primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
