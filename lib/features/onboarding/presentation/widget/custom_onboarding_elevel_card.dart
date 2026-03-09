import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomOnboardingEleveCard extends StatelessWidget {
  const CustomOnboardingEleveCard({
    super.key,
    required this.cardColor,
    required this.cardBorderColor,
    required this.title,
    required this.image,
    required this.onTap,
  });

  final Color cardColor;
  final Color cardBorderColor;
  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: cardColor,
          border: Border.all(color: cardBorderColor, width: 4.w),
        ),
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 25.h),
        child: Row(
          children: [
            Image.asset(image, height: 20.h, width: 20.w),
            UIHelper.horizontalspace16,
            Expanded(
              child: Text(
                title,
                style: TextFontStyle.txtfontstyle16w700c252D48,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
