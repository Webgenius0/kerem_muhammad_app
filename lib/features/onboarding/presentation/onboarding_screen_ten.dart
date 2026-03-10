import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_onboarding_ten_card.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenTen extends StatefulWidget {
  const OnboardingScreenTen({super.key});

  @override
  State<OnboardingScreenTen> createState() => _OnboardingScreenTenState();
}

class _OnboardingScreenTenState extends State<OnboardingScreenTen> {
  String title = '';
  int selectedIndex = -1;

  void selectionExpression(int index, String value) {
    setState(() {
      selectedIndex = index;
      title = value;
    });

    log("Title: $title");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '10',
        svgimg: AppIcons.arrowleft,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            Text(
              textAlign: TextAlign.center,
              "When were you happy with your weight last time?",
              style: TextFontStyle.txtfontstyle24w700c212121,
            ),

            UIHelper.verticalSpace(56.h),

            CustomOnboardingTenCard(
              onTap: () {
                selectionExpression(0, 'Way back');
              },

              cardBorderColor: selectedIndex == 0
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: selectedIndex == 0
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: 'Way back',
              image: AppImages.wayback,
            ),

            UIHelper.verticalspace16,

            CustomOnboardingTenCard(
              onTap: () {
                selectionExpression(1, 'Now');
              },

              cardBorderColor: selectedIndex == 1
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: selectedIndex == 1
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: 'Now',
              image: AppImages.now,
            ),
            UIHelper.verticalspace16,
            CustomOnboardingTenCard(
              onTap: () {
                selectionExpression(2, 'Never');
              },
              cardBorderColor: selectedIndex == 2
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: selectedIndex == 2
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: 'Never',
              image: AppImages.never,
            ),
            UIHelper.verticalSpace(160.h),
            CustomButtonprimary(
              title: 'Get started',
              onTap: () {
                log("Final Selection ==> $title");
                NavigationService.navigateTo(Routes.onboardingScreenEleven);
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
