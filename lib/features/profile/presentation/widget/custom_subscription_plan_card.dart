import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomSubscriptionPlanCard extends StatelessWidget {
  const CustomSubscriptionPlanCard({
    super.key,
    required this.subscriptionType,
    required this.subscriptionPrice,
    required this.subscrtiptionplan,
    required this.billedText,
    required this.nextPayment,
    required this.onTapUpgradePlan,
  });
  final String subscriptionType;
  final String subscriptionPrice;
  final String subscrtiptionplan;
  final String billedText;
  final String nextPayment;
  final VoidCallback onTapUpgradePlan;

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
                  child: Row(
                    children: [
                      Text(
                        subscriptionType,
                        style: TextFontStyle.txtfontstyle14w500c212121,
                      ),
                      UIHelper.horizontalSpace(8.w),
                      Flexible(
                        child: Text(
                          '\$$subscriptionPrice /$subscrtiptionplan',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.txtfontstyle14w700c212121,
                        ),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: onTapUpgradePlan,
                  child: Text(
                    'Upgrade plan',
                    style: TextFontStyle.txtfontstyle14w600primaryColor,
                  ),
                ),
              ],
            ),

            UIHelper.verticalspace16,

            Text(billedText, style: TextFontStyle.txtfontstyle14w400c212121),

            UIHelper.verticalspace16,
            Text(
              'Next payment: $nextPayment',
              style: TextFontStyle.txtfontstyle14w400c212121,
            ),
          ],
        ),
      ),
    );
  }
}
