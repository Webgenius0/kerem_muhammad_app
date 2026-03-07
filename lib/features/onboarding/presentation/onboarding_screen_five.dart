import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_onboarding_five_text_widget.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenFive extends StatefulWidget {
  const OnboardingScreenFive({super.key});

  @override
  State<OnboardingScreenFive> createState() => _OnboardingScreenFiveState();
}

class _OnboardingScreenFiveState extends State<OnboardingScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '5',
        svgimg: AppIcons.arrowleft,
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            CustomOnboardingFiveTextWidget(),
          ],
        ),
      ),
    );
  }
}
