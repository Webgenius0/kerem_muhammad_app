import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomWorkoutCard extends StatelessWidget {
  const CustomWorkoutCard({
    super.key,
    required this.cardColor,
    required this.cardBorderColor,
    required this.title,
    required this.images,
    required this.onTap,
    required this.startNumber,
    required this.ednNumber,
  });

  final Color cardColor;
  final Color cardBorderColor;
  final String title;
  final String images;
  final VoidCallback onTap;
  final String startNumber;
  final String ednNumber;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(images, height: 20.h, width: 20.w),
            UIHelper.horizontalSpace(10.w),

            Text(
              '$startNumber-$ednNumber',
              style: TextFontStyle.txtfontstyle24w600c212121,
            ),

            UIHelper.horizontalSpace(6.w),

            Expanded(
              child: Text(
                title,
                style: TextFontStyle.txtfontstyle14w600c5C5C5C,
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
