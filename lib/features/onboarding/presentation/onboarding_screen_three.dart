import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
        currentStep: '3',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            Text(
              textAlign: TextAlign.center,
              'You are most efficient  with FitForge than just by yourself',
              style: TextFontStyle.txtfontstyle24w700c212121,
            ),

            Padding(
              padding: EdgeInsets.only(top: 56.h, bottom: 38.h),
              child: Image.asset(AppImages.onboardingThree),
            ),
          ],
        ),
      ),
    );
  }
}
