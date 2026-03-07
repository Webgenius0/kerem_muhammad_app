import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
        currentStep: '1',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalspace32,
            Center(
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                'What is your gender?',
                style: TextFontStyle.txtfontstyle24w700c212121,
              ),
            ),
            UIHelper.verticalSpace(100.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30.h),
                  child: GestureDetector(
                    onTap: () {
                      NavigationService.navigateTo(Routes.onboardingScreenTwo);
                    },
                    child: SvgPicture.asset(AppIcons.female),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    NavigationService.navigateTo(Routes.onboardingScreenTwo);
                  },
                  child: SvgPicture.asset(AppIcons.male),
                ),
              ],
            ),

            UIHelper.verticalSpace(20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    NavigationService.navigateTo(Routes.onboardingScreenTwo);
                  },
                  child: Text(
                    'Female',
                    style: TextFontStyle.txtfontstyle24w600c212121,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    NavigationService.navigateTo(Routes.onboardingScreenTwo);
                  },
                  child: Text(
                    'Male',
                    style: TextFontStyle.txtfontstyle24w600c212121,
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(60.h),
            Center(
              child: GestureDetector(
                onTap: () {
                  NavigationService.navigateTo(Routes.onboardingScreenTwo);
                },
                child: SvgPicture.asset(AppIcons.other),
              ),
            ),
            UIHelper.verticalSpace(20.h),
            GestureDetector(
              onTap: () {
                NavigationService.navigateTo(Routes.onboardingScreenTwo);
              },
              child: Text(
                'Other',
                style: TextFontStyle.txtfontstyle24w600c212121,
              ),
            ),

            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
