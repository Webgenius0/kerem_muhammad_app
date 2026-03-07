import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/assets_helper/app_image.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.splash, fit: BoxFit.cover),
          ),
          Center(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SvgPicture.asset(AppIcons.fitforgeSplashicon),
                  UIHelper.verticalSpace(8.h),
                  Text(
                    'Your Fitness. Your Goal.',
                    style: TextFontStyle.txtfontstyle20w400cD1D5DB,
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 20.h,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Powered by AI • 3D Coaching',
                style: TextFontStyle.txtfontstyle13w400c9CA3AF,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
