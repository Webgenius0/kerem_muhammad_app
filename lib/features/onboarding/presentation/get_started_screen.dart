import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(100.h),

            Center(child: SvgPicture.asset(AppIcons.onboardingic)),

            UIHelper.verticalSpace(124.h),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Let’s begin with a few question to create yourCustomized Plan',
                style: TextFontStyle.txtfontstyle24w600c282828,
              ),
            ),

            UIHelper.verticalSpace(240.h),
            CustomButtonprimary(
              title: 'Get started',
              onTap: () {
                NavigationService.navigateTo(Routes.onboardingScreenOne);
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
