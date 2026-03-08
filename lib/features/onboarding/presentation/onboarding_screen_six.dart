import 'package:flutter/material.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';

class OnboardingScreenSix extends StatefulWidget {
  const OnboardingScreenSix({super.key});

  @override
  State<OnboardingScreenSix> createState() => _OnboardingScreenSixState();
}

class _OnboardingScreenSixState extends State<OnboardingScreenSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
