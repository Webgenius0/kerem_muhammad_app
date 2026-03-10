import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class CustomRatingCommentWidget extends StatelessWidget {
  const CustomRatingCommentWidget({
    super.key,
    required this.ragingiconOne,
    required this.ragingiconTwo,
    required this.ragingiconThree,
    required this.ragingiconFour,
    required this.ragingiconFive,
    required this.reviewText,
    required this.name,
  });

  final String ragingiconOne;
  final String ragingiconTwo;
  final String ragingiconThree;
  final String ragingiconFour;
  final String ragingiconFive;
  final String reviewText;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.cFFFFFF,

          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              blurRadius: 20,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.only(
          top: 29.h,
          bottom: 8.h,
          right: 16.w,
          left: 16.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              children: [
                SvgPicture.asset(
                  ragingiconOne,
                  colorFilter: ColorFilter.mode(
                    AppColors.cFEAC3F,
                    BlendMode.srcIn,
                  ),
                ),

                SvgPicture.asset(
                  ragingiconTwo,
                  colorFilter: ColorFilter.mode(
                    AppColors.cFEAC3F,
                    BlendMode.srcIn,
                  ),
                ),

                SvgPicture.asset(
                  ragingiconThree,
                  colorFilter: ColorFilter.mode(
                    AppColors.cFEAC3F,
                    BlendMode.srcIn,
                  ),
                ),

                SvgPicture.asset(
                  ragingiconFour,
                  colorFilter: ColorFilter.mode(
                    AppColors.cFEAC3F,
                    BlendMode.srcIn,
                  ),
                ),

                SvgPicture.asset(
                  ragingiconFive,
                  colorFilter: ColorFilter.mode(
                    AppColors.cFEAC3F,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),

            UIHelper.verticalSpace(10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                textAlign: TextAlign.center,
                reviewText,
                style: TextFontStyle.txtfontstyle16w700c282828,
              ),
            ),
            UIHelper.verticalspace16,
            Text(name, style: TextFontStyle.txtfontstyle12w400c000000),
          ],
        ),
      ),
    );
  }
}
