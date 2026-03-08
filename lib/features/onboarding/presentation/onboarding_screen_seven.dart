import 'package:flutter/material.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';

class OnboardingScreenSeven extends StatefulWidget {
  const OnboardingScreenSeven({super.key});

  @override
  State<OnboardingScreenSeven> createState() => _OnboardingScreenSevenState();
}

class _OnboardingScreenSevenState extends State<OnboardingScreenSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '7',
        svgimg: AppIcons.arrowleft,
      ),
    );
  }
}
