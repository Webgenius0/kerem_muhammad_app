import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_app_bar_onboarding.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_positive_feedbacks_card.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class OnboardingScreenTwelve extends StatefulWidget {
  const OnboardingScreenTwelve({super.key});

  @override
  State<OnboardingScreenTwelve> createState() => _OnboardingScreenTwelveState();
}

class _OnboardingScreenTwelveState extends State<OnboardingScreenTwelve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOnboarding(
        onTap: () {
          NavigationService.goBack;
        },
        currentStep: '12',
        svgimg: AppIcons.arrowleft,
        righttitleText: 'Skip',
        onTapSkip: () {
          NavigationService.navigateTo(Routes.paywalScreen);
        },
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(20.h),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Positive Feedbacks',
                style: TextFontStyle.txtfontstyle24w700c212121,
              ),
            ),
            UIHelper.verticalSpace(48.h),
            Padding(
              padding: EdgeInsets.only(right: 20.w, left: 20.w),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CustomPositiveFeedbacksCard(
                    imageUrl:
                        "https://images.unsplash.com/photo-1546961329-78bef0414d7c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
                    name: 'Eleanor Pena',
                    feedback: "FitForge is my dalily partner for stretching",
                  );
                },
              ),
            ),
            UIHelper.verticalSpace(60.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomButtonprimary(
                title: 'Allow now',
                onTap: () {
                  NavigationService.navigateTo(Routes.paywalScreen);
                },
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.cFFFFFF,
              ),
            ),
            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
