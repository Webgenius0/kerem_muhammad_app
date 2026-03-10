import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenSix extends StatefulWidget {
  const OnboardingScreenSix({super.key});

  @override
  State<OnboardingScreenSix> createState() => _OnboardingScreenSixState();
}

class _OnboardingScreenSixState extends State<OnboardingScreenSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '6',
        svgimg: AppIcons.arrowleft,
        onTapSkip: () {
          NavigationService.navigateTo(Routes.onboardingScreenSeven);
        },
        righttitleText: 'skip',
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20.w, left: 20.w),
              child: Image.asset(AppImages.onboardingsix),
            ),

            UIHelper.verticalSpace(4.h),
            Text(
              textAlign: TextAlign.center,
              '87% more successful with notifications',
              style: TextFontStyle.txtfontstyle24w700c212121,
            ),
            UIHelper.verticalSpace(20.h),
            Text(
              textAlign: TextAlign.center,

              'According to our data, FitForge users who receive notifation are more likely achieve their goals',
              style: TextFontStyle.txtfontstyle16w400c5C5C5C,
            ),
            UIHelper.verticalSpace(90.h),
            CustomButtonprimary(
              title: 'Allow now',
              onTap: () {
                NavigationService.navigateTo(Routes.onboardingScreenSeven);
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
}
