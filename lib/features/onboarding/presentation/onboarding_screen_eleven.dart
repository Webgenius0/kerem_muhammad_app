import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_onboarding_elevel_card.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenEleven extends StatefulWidget {
  const OnboardingScreenEleven({super.key});

  @override
  State<OnboardingScreenEleven> createState() => _OnboardingScreenElevenState();
}

class _OnboardingScreenElevenState extends State<OnboardingScreenEleven> {
  String title = '';
  int gainselectedIndex = -1;

  void selectionGainWeight(int index, String value) {
    setState(() {
      gainselectedIndex = index;
      title = value;
    });

    log("Title: $title");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
        currentStep: '11',
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),

            Text(
              textAlign: TextAlign.center,
              "How fast do you want to gain weight per week?",
              style: TextFontStyle.txtfontstyle24w700c212121,
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.h),
              child: Text.rich(
                TextSpan(
                  text: '12 week ',
                  style: TextFontStyle.txtfontstyle14w700cFF5722,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'to reach your Goal',
                      style: TextFontStyle.txtfontstyle14w600c212121,
                    ),
                  ],
                ),
              ),
            ),

            CustomOnboardingEleveCard(
              onTap: () {
                selectionGainWeight(0, '0.1 Kg');
              },
              cardBorderColor: gainselectedIndex == 0
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: gainselectedIndex == 0
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: '0.1 Kg',
              image: AppImages.guava,
            ),

            UIHelper.verticalspace16,

            CustomOnboardingEleveCard(
              onTap: () {
                selectionGainWeight(1, '0.8 kg');
              },
              cardBorderColor: gainselectedIndex == 1
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: gainselectedIndex == 1
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: '0.8 kg',
              image: AppImages.guava,
            ),

            UIHelper.verticalspace16,

            CustomOnboardingEleveCard(
              onTap: () {
                selectionGainWeight(2, '1.2 kg');
              },
              cardBorderColor: gainselectedIndex == 2
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: gainselectedIndex == 2
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: '1.2 kg',
              image: AppImages.guava,
            ),

            UIHelper.verticalspace16,

            CustomOnboardingEleveCard(
              onTap: () {
                selectionGainWeight(3, '1.6 kg');
              },
              cardBorderColor: gainselectedIndex == 3
                  ? AppColors.cFF5722
                  : AppColors.cF5F5F5,
              cardColor: gainselectedIndex == 3
                  ? AppColors.ccFF57225percent
                  : AppColors.cF5F5F5,
              title: '1.6 kg',
              image: AppImages.guava,
            ),

            UIHelper.verticalSpace(46.h),

            CustomButtonprimary(
              title: 'Next',
              onTap: () {
                log("Final Selection ==> $title");
                NavigationService.navigateTo(Routes.lognTermsResult);
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
