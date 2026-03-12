import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomNeutritionSelectFoodCard extends StatelessWidget {
  const CustomNeutritionSelectFoodCard({
    super.key,
    required this.foodtitle,
    required this.foodicon,
    required this.onTap,
    required this.cardColor,
    required this.foodtitleColor,
  });

  final String foodtitle;
  final String foodicon;
  final VoidCallback onTap;
  final Color cardColor;
  final Color foodtitleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: cardColor,
        ),
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
        child: Column(
          children: [
            SvgPicture.asset(foodicon),
            UIHelper.verticalSpace(10.h),
            Text(
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              foodtitle,
              style: TextFontStyle.txtfontstyle14w500c212121.copyWith(
                color: foodtitleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
