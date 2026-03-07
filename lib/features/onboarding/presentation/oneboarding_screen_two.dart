import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_goal_card.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OneboardingScreenTwo extends StatefulWidget {
  const OneboardingScreenTwo({super.key});

  @override
  State<OneboardingScreenTwo> createState() => _OneboardingScreenTwoState();
}

class _OneboardingScreenTwoState extends State<OneboardingScreenTwo> {
  int goalselectedIndex = -1;

  // void selectionGoal(int index) {
  //   setState(() {
  //     goalselectedIndex = index;
  //   });
  // }

  void selectionGoal(int index, String title) {
    setState(() {
      goalselectedIndex = index;
    });

    debugPrint("Workout Title: $title");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '2',
        svgimg: AppIcons.arrowleft,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(20.h),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'What is your Primary',
                style: TextFontStyle.txtfontstyle24w700c212121,
              ),
            ),
            UIHelper.verticalSpace(10.h),
            Center(
              child: Text(
                'Goal?',
                style: TextFontStyle.txtfontstyle24w700c212121,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 39.h, bottom: 8.h),
              child: CustomGoalCard(
                onTap: () {
                  selectionGoal(0, 'Loose Weight');
                },
                cardBorderColor: goalselectedIndex == 0
                    ? AppColors.cFF5722
                    : AppColors.cF5F5F5,
                cardColor: goalselectedIndex == 0
                    ? AppColors.ccFF57225percent
                    : AppColors.cF5F5F5,
                images: AppImages.fire,
                title: 'Loose Weight',
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: CustomGoalCard(
                onTap: () {
                  selectionGoal(1, 'Maintain Weight');
                },
                cardBorderColor: goalselectedIndex == 1
                    ? AppColors.cFF5722
                    : AppColors.cF5F5F5,
                cardColor: goalselectedIndex == 1
                    ? AppColors.ccFF57225percent
                    : AppColors.cF5F5F5,
                images: AppImages.maintain,
                title: 'Maintain Weight',
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: CustomGoalCard(
                onTap: () {
                  selectionGoal(2, 'Gain Weight');
                },
                cardBorderColor: goalselectedIndex == 2
                    ? AppColors.cFF5722
                    : AppColors.cF5F5F5,
                cardColor: goalselectedIndex == 2
                    ? AppColors.ccFF57225percent
                    : AppColors.cF5F5F5,
                images: AppImages.gain,
                title: 'Gain Weight',
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: CustomGoalCard(
                onTap: () {
                  selectionGoal(3, 'Become Ripped');
                },
                cardBorderColor: goalselectedIndex == 3
                    ? AppColors.cFF5722
                    : AppColors.cF5F5F5,
                cardColor: goalselectedIndex == 3
                    ? AppColors.ccFF57225percent
                    : AppColors.cF5F5F5,
                images: AppImages.maintain,
                title: 'Become Ripped',
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: CustomGoalCard(
                onTap: () {
                  selectionGoal(4, 'Get Healthier');
                },
                cardBorderColor: goalselectedIndex == 4
                    ? AppColors.cFF5722
                    : AppColors.cF5F5F5,
                cardColor: goalselectedIndex == 4
                    ? AppColors.ccFF57225percent
                    : AppColors.cF5F5F5,
                images: AppImages.gain,
                title: 'Get Healthier',
              ),
            ),

            UIHelper.verticalSpace(40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: CustomButtonprimary(
                title: 'Next',
                onTap: () {
                  NavigationService.navigateTo(Routes.onboardingScreenThree);
                },
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.cFFFFFF,
              ),
            ),

            UIHelper.verticalSpace(40.h),
          ],
        ),
      ),
    );
  }
}
