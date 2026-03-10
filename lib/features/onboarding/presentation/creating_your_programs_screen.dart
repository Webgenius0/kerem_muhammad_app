import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_rating_comment_widget.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CreatingYourProgramsScreen extends StatefulWidget {
  const CreatingYourProgramsScreen({super.key});

  @override
  State<CreatingYourProgramsScreen> createState() =>
      _CreatingYourProgramsScreenState();
}

class _CreatingYourProgramsScreenState
    extends State<CreatingYourProgramsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalspace12,
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Crafting your program',
                style: TextFontStyle.txtfontstyle24w700c282828,
              ),
            ),
            UIHelper.verticalSpace(40.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Analyzing profile :',
                    style: TextFontStyle.txtfontstyle214500c5C5C5C,
                    children: <TextSpan>[
                      TextSpan(
                        text: ' 4’, 130lbs',
                        style: TextFontStyle.txtfontstyle14w600c282828,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120.r),
                    color: AppColors.cFF5722,
                  ),
                  child: SvgPicture.asset(AppIcons.done),
                ),
              ],
            ),
            UIHelper.verticalSpace(8.h),

            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 1.0),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  percent: value,
                  lineHeight: 14,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cECECEC,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),

            UIHelper.verticalspace24,

            Text.rich(
              TextSpan(
                text: 'Calculating metabolism: ',
                style: TextFontStyle.txtfontstyle214500c5C5C5C,
                children: <TextSpan>[
                  TextSpan(
                    text: ' 172cal/Day',
                    style: TextFontStyle.txtfontstyle14w600c282828,
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(8.h),
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.7),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  percent: value,
                  lineHeight: 14,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cECECEC,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),

            UIHelper.verticalspace24,

            Text.rich(
              TextSpan(
                text: 'Generate meal plan: ',
                style: TextFontStyle.txtfontstyle214500c5C5C5C,
                children: <TextSpan>[
                  TextSpan(
                    text: ' Keto',
                    style: TextFontStyle.txtfontstyle14w600c282828,
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(8.h),
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.7),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  percent: value,
                  lineHeight: 73.h,
                  barRadius: Radius.circular(10.r),
                  backgroundColor: AppColors.cECECEC,
                  center: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        '38%',
                        style: TextFontStyle.txtfontstyle28w600cFFFFFF,
                      ),
                    ),
                  ),
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),

            UIHelper.verticalspace24,
            Text(
              'Healthy condition',
              style: TextFontStyle.txtfontstyle14w500c5C5C5C,
            ),

            UIHelper.verticalSpace(10.h),

            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 0.7),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  percent: value,
                  lineHeight: 14,
                  barRadius: Radius.circular(100.r),
                  backgroundColor: AppColors.cECECEC,
                  linearGradient: LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryColor],
                  ),
                );
              },
            ),

            UIHelper.verticalSpace(52.h),

            CustomRatingCommentWidget(
              name: 'Sofia',
              reviewText: 'I’ve achieved my goal with this app!',
              ragingiconOne: AppIcons.star,
              ragingiconTwo: AppIcons.star,
              ragingiconThree: AppIcons.star,
              ragingiconFive: AppIcons.star,
              ragingiconFour: AppIcons.star,
            ),

            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
