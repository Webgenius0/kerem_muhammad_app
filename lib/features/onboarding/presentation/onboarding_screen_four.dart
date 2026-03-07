import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_dedicated_athlete_card.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_workout_card.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenFour extends StatefulWidget {
  const OnboardingScreenFour({super.key});

  @override
  State<OnboardingScreenFour> createState() => _OnboardingScreenFourState();
}

class _OnboardingScreenFourState extends State<OnboardingScreenFour> {
  int workoutselectedIndex = -1;

  void selectionWorkout(int index, String title, String number) {
    setState(() {
      workoutselectedIndex = index;
    });

    debugPrint("Workout Title: $title");
    debugPrint("Workout Number: $number");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '4',
        svgimg: AppIcons.arrowleft,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            Text(
              textAlign: TextAlign.center,
              'How often do you',
              style: TextFontStyle.txtfontstyle24w700c212121,
            ),
            UIHelper.verticalSpace(10.h),
            Center(
              child: Text(
                ' workout?',
                style: TextFontStyle.txtfontstyle24w700c212121,
              ),
            ),

            UIHelper.verticalSpace(76.h),

            CustomWorkoutCard(
              onTap: () {
                selectionWorkout(0, 'Workouts now and then', '0-2');
              },
              cardBorderColor: workoutselectedIndex == 0
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: workoutselectedIndex == 0
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: 'Workouts now and then',
              images: AppImages.human,
              startNumber: '0',
              ednNumber: '2',
            ),
            UIHelper.verticalspace16,
            CustomWorkoutCard(
              onTap: () {
                selectionWorkout(1, 'A few workouts per week', '3-5');
              },
              cardBorderColor: workoutselectedIndex == 1
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: workoutselectedIndex == 1
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: 'A few workouts per week',
              images: AppImages.human,
              startNumber: '3',
              ednNumber: '5',
            ),
            UIHelper.verticalspace16,

            CustomDedicatedAthleteCard(
              onTap: () {
                selectionWorkout(2, 'Dedicated athlete', '6');
              },
              cardBorderColor: workoutselectedIndex == 2
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: workoutselectedIndex == 2
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              images: AppImages.dedicated,
              number: '6',
              title: 'Dedicated athlete',
            ),
            UIHelper.verticalSpace(160.h),
            CustomButtonprimary(
              title: 'Next',
              onTap: () {
                NavigationService.navigateTo(Routes.onboardingScreenFive);
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
