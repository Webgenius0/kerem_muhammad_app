import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomSubscriptionBillingInformationCard extends StatelessWidget {
  const CustomSubscriptionBillingInformationCard({
    super.key,
    required this.name,
    required this.mail,
    required this.onTapbillingHistory,
    required this.onTapChangeHistory,
  });
  final String name;
  final String mail;
  final VoidCallback onTapbillingHistory;
  final VoidCallback onTapChangeHistory;

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

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    name,
                    style: TextFontStyle.txtfontstyle14w400c212121,
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

            UIHelper.verticalspace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    mail,
                    style: TextFontStyle.txtfontstyle14w400c212121,
                  ),
                ),
                GestureDetector(
                  onTap: onTapChangeHistory,
                  child: Text(
                    'Change information',
                    style: TextFontStyle.txtfontstyle14w600primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
