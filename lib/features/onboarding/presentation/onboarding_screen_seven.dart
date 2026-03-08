import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenSeven extends StatefulWidget {
  const OnboardingScreenSeven({super.key});

  @override
  State<OnboardingScreenSeven> createState() => _OnboardingScreenSevenState();
}

class _OnboardingScreenSevenState extends State<OnboardingScreenSeven> {
  bool isFeet = true;
  int cmValue = 160;
  int ftValue = 5;
  int inchValue = 0;

  final FixedExtentScrollController controller = FixedExtentScrollController(
    initialItem: 24, // Default to 5'0" (3ft + 24 inches)
  );

  final int minFeet = 3;
  final int maxFeet = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '7',
        svgimg: AppIcons.arrowleft,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Text(
              "What’s your height?",
              style: TextFontStyle.txtfontstyle24w700c212121,
            ),
            SizedBox(height: 25.h),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  toggleButton("CM", !isFeet),
                  toggleButton("FT", isFeet),
                ],
              ),
            ),
            SizedBox(height: 40.h),

            SizedBox(
              height: 0.5.sh,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 120.w, top: 152.h),
                      child: FractionallySizedBox(
                        heightFactor: 0.8,
                        child: SvgPicture.asset(
                          AppIcons.human,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 140.w,
                      child: ListWheelScrollView.useDelegate(
                        controller: controller,
                        itemExtent: 8.h,
                        diameterRatio: 15,
                        perspective: 0.002,
                        physics: const FixedExtentScrollPhysics(),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            if (isFeet) {
                              ftValue = minFeet + index ~/ 12;
                              inchValue = index % 12;
                            } else {
                              cmValue = 100 + index;
                            }
                          });
                        },
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount: isFeet
                              ? (maxFeet - minFeet + 1) * 12
                              : 151,
                          builder: (context, index) {
                            bool isMajor;
                            String text = "";

                            if (isFeet) {
                              int totalInches = index;
                              int feet = minFeet + totalInches ~/ 12;
                              int inch = totalInches % 12;
                              isMajor = (inch == 0);
                              if (isMajor) text = "$feet";
                            } else {
                              int cm = 100 + index;
                              isMajor = (cm % 10 == 0);
                              if (isMajor) text = "$cm";
                            }

                            return Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 60.w,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: isMajor ? 60.w : 30.w,
                                        height: 2.h,
                                        color: isMajor
                                            ? AppColors.c9EA0A5
                                            : AppColors.cDDDDDD,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),

                                  if (isMajor)
                                    SizedBox(
                                      width: 40.w,
                                      height: 8.h,
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: -10.h,
                                            bottom: -10.h,
                                            child: Center(
                                              child: Text(
                                                text,
                                                style: TextFontStyle
                                                    .txtfontstyle15w400c212121,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.cFF5722,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      width: 180.w,
                      height: 4.h,
                    ),
                  ),

                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextFontStyle.txtfontstyle35w800c111214,

                        children: [
                          TextSpan(
                            text: isFeet ? "$ftValue' $inchValue" : "$cmValue",
                          ),
                          TextSpan(
                            text: isFeet ? "Ft" : " Cm",
                            style: TextFontStyle.txtfontstyle36w400c676C75,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            UIHelper.verticalspace24,

            CustomButtonprimary(
              title: 'Next',
              onTap: () {
                String output = isFeet
                    ? "Value: $ftValue'$inchValue\""
                    : "Value: $cmValue cm";

                log(output, name: "HEIGHT_SELECTION");

                debugPrint("Selected Height: $output");

                NavigationService.navigateTo(Routes.onboardingScreenEight);
              },
              buttonColor: AppColors.primaryColor,
              textColor: AppColors.cFFFFFF,
            ),
            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }

  Widget toggleButton(String text, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFeet = (text == "FT");

          if (isFeet) {
            controller.jumpToItem(24);
            ftValue = 5;
            inchValue = 0;
          } else {
            controller.jumpToItem(60);
            cmValue = 160;
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: selected ? AppColors.cFF5722 : Colors.transparent,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Text(
          text,
          style: TextFontStyle.txtfontstyle15w400c212121.copyWith(
            color: selected ? AppColors.cFFFFFF : AppColors.c212121,
          ),
        ),
      ),
    );
  }
}
