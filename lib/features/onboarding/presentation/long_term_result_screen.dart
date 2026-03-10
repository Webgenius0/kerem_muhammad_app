import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/onboarding/presentation/widget/custom_long_term_container_widget.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class LongTermResultScreen extends StatefulWidget {
  const LongTermResultScreen({super.key});

  @override
  State<LongTermResultScreen> createState() => _LongTermResultScreenState();
}

class _LongTermResultScreenState extends State<LongTermResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalSpace(80.h),
            Text(
              textAlign: TextAlign.center,
              "FitForge delivers Long-Term Result 🔥",
              style: TextFontStyle.txtfontstyle24w700c212121,
            ),

            UIHelper.verticalSpace(60.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Image.asset(AppImages.longtermimg),
            ),

            UIHelper.verticalSpace(80.h),

            CustomLongTermContainerWidget(),

            UIHelper.verticalSpace(160.h),

            CustomButtonprimary(
              title: 'Next',
              onTap: () {
                NavigationService.navigateTo(Routes.onboardingScreenTwelve);
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
