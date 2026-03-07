import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_button_primary.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/features/auth/login_sign_up/presentation/widget/custom_login_sign_up_button.dart';
import 'package:kerem_muhammad_app/helpers/all_routes.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.loginsignupbg, fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 40.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.40),
                  Text(
                    'Become a FitForge',
                    style: TextFontStyle.txtfontstyle18w700cFFFFFF,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.h),
                    child: CustomLoginSignUpButton(
                      authicon: AppIcons.apple,
                      title: 'Continue with Apple',
                      onTap: () {},
                    ),
                  ),

                  CustomLoginSignUpButton(
                    authicon: AppIcons.google,
                    title: 'Continue with Google',
                    onTap: () {},
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.h),
                    child: CustomLoginSignUpButton(
                      authicon: AppIcons.email,
                      title: 'Continue with Email',
                      onTap: () {},
                    ),
                  ),

                  SizedBox(height: 40.h),
                  CustomButtonprimary(
                    title: 'Skip for Now',
                    onTap: () {
                      NavigationService.navigateTo(Routes.getstartedScreen);
                    },
                    buttonColor: AppColors.primaryColor,
                    textColor: AppColors.cFFFFFF,
                  ),

                  SizedBox(height: 18.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Want to skip this step?',
                        style: TextFontStyle.txtfontstyle13w500c0x38FFFFFF,
                      ),
                      UIHelper.horizontalSpace(6.w),

                      GestureDetector(
                        onTap: () {
                          NavigationService.navigateTo(Routes.getstartedScreen);
                        },
                        child: Text(
                          'SKIP',
                          style: TextFontStyle.txtfontstyle13w500c0x3cFFFFFF,
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalspace32,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
